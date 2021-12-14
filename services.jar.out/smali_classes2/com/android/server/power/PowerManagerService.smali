.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$UidState;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$Injector;,
        Lcom/android/server/power/PowerManagerService$Clock;,
        Lcom/android/server/power/PowerManagerService$NativeWrapper;,
        Lcom/android/server/power/PowerManagerService$Constants;,
        Lcom/android/server/power/PowerManagerService$ProfilePowerState;,
        Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;,
        Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;,
        Lcom/android/server/power/PowerManagerService$HaltMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_ATTENTIVE:I = 0x4000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DISPLAY_GROUP_WAKEFULNESS:I = 0x10000

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_QUIESCENT:I = 0x1000

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_VR_MODE_CHANGED:I = 0x2000

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final ENHANCED_DISCHARGE_PREDICTION_BROADCAST_MIN_DELAY_MS:J = 0xea60L

.field private static final ENHANCED_DISCHARGE_PREDICTION_TIMEOUT_MS:J = 0x1b7740L

.field private static final HALT_MODE_REBOOT:I = 0x1

.field private static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field private static final HALT_MODE_SHUTDOWN:I = 0x0

.field private static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field private static final MSG_ATTENTIVE_TIMEOUT:I = 0x5

.field private static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final REASON_BATTERY_THERMAL_STATE:Ljava/lang/String; = "shutdown,thermal,battery"

.field private static final REASON_LOW_BATTERY:Ljava/lang/String; = "shutdown,battery"

.field private static final REASON_REBOOT:Ljava/lang/String; = "reboot"

.field private static final REASON_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final REASON_THERMAL_SHUTDOWN:Ljava/lang/String; = "shutdown,thermal"

.field private static final REASON_USERREQUESTED:Ljava/lang/String; = "shutdown,userrequested"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SCREEN_ON_LATENCY_WARNING_MS:I = 0xc8

.field private static final SYSTEM_PROPERTY_QUIESCENT:Ljava/lang/String; = "ro.boot.quiescent"

.field private static final SYSTEM_PROPERTY_REBOOT_REASON:Ljava/lang/String; = "sys.boot.reason"

.field private static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final TRACE_SCREEN_ON:Ljava/lang/String; = "Screen turning on"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static sQuiescent:Z


# instance fields
.field private mAlwaysOnEnabled:Z

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttentionDetector:Lcom/android/server/power/AttentionDetector;

.field private mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field private mAttentiveTimeoutConfig:I

.field private mAttentiveTimeoutSetting:J

.field private mAttentiveWarningDurationConfig:J

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field private final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

.field private mBootCompleted:Z

.field private final mClock:Lcom/android/server/power/PowerManagerService$Clock;

.field final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOff:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDozeStartInProgress:Z

.field private mDrawWakeLockOverrideFromSidekick:Z

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mEnhancedDischargePredictionIsPersonalized:Z

.field private mEnhancedDischargeTimeElapsed:J

.field private final mEnhancedDischargeTimeLock:Ljava/lang/Object;

.field private final mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

.field private mForceSuspendActive:Z

.field private mForegroundProfile:I

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

.field private final mInjector:Lcom/android/server/power/PowerManagerService$Injector;

.field private mInterceptedPowerKeyForProximity:Z

.field private mIsFaceDown:Z

.field private mIsPowered:Z

.field private mIsVrModeEnabled:Z

.field private mLastEnhancedDischargeTimeUpdatedElapsed:J

.field private mLastFlipTime:J

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastSleepReason:I

.field private mLastSleepTime:J

.field private mLastWakeReason:I

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightDeviceIdleMode:Z

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private mMaximumScreenDimDurationConfig:J

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field private mMinimumScreenOffTimeoutConfig:J

.field private final mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mNotifyLongDispatched:J

.field private mNotifyLongNextCheck:J

.field private mNotifyLongScheduled:J

.field private mOverriddenTimeout:J

.field private mPlugType:I

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mProfilePowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$ProfilePowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mScreenBrightnessBoostInProgress:Z

.field public final mScreenBrightnessDefault:F

.field public final mScreenBrightnessDefaultVr:F

.field public final mScreenBrightnessDim:F

.field public final mScreenBrightnessDoze:F

.field public final mScreenBrightnessMaximum:F

.field public final mScreenBrightnessMaximumVr:F

.field public final mScreenBrightnessMinimum:F

.field public final mScreenBrightnessMinimumVr:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:F

.field private mScreenOffTimeoutSetting:J

.field private final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:J

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private final mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

.field private mSystemReady:Z

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private mUidsChanged:Z

.field private mUidsChanging:Z

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserId:I

.field private mUserInactiveOverrideFromWindowManager:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulnessChanging:Z

.field private mWakefulnessRaw:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public static synthetic $r8$lambda$3O_XhPeje_Bvi3Lsae4KaFoxJj0(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->onUserAttention()V

    return-void
.end method

.method public static synthetic $r8$lambda$q7dp6tNnllSjuO6t2c5KypV49H8(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->onFlip(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    const/4 v5, 0x0

    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    iput-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    const/high16 v6, 0x7fc00000    # Float.NaN

    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    iput-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    const/4 v7, -0x1

    iput v7, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    new-array v6, v5, [I

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    new-array v6, v5, [I

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v6, v1}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    new-instance v6, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v6, v1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    iput-object v2, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v6, v1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    new-instance v6, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v6, v1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createClock()Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    iput-object v3, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    new-instance v8, Lcom/android/server/ServiceThread;

    const-string v9, "PowerManagerService"

    const/4 v10, -0x4

    invoke-direct {v8, v9, v10, v5}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v8}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {v8}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    new-instance v9, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {v3, v8, v9}, Lcom/android/server/power/PowerManagerService$Injector;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/power/PowerManagerService$Constants;

    invoke-direct {v9, v1, v8}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v9, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v3, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    nop

    invoke-virtual {v3, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplaySuppressionController(Landroid/content/Context;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    new-instance v8, Lcom/android/server/power/AttentionDetector;

    new-instance v9, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v8, v9, v4}, Lcom/android/server/power/AttentionDetector;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    new-instance v8, Lcom/android/server/power/FaceDownDetector;

    new-instance v9, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v8, v9}, Lcom/android/server/power/FaceDownDetector;-><init>(Ljava/util/function/Consumer;)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    new-instance v8, Lcom/android/server/power/ScreenUndimDetector;

    invoke-direct {v8}, Lcom/android/server/power/ScreenUndimDetector;-><init>()V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    new-instance v8, Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {v8, v4}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    nop

    invoke-virtual {v3, v4, v2, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v3, v4, v2, v9, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v3, v4, v2, v8}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500d0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10500cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500cb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10500ca

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10500c9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    const/high16 v13, -0x40000000    # -2.0f

    cmpl-float v14, v8, v13

    if-eqz v14, :cond_1

    cmpl-float v14, v9, v13

    if-eqz v14, :cond_1

    cmpl-float v14, v10, v13

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    iput v8, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    iput v9, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    iput v10, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    goto :goto_1

    :cond_1
    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    :goto_1
    cmpl-float v14, v11, v13

    if-nez v14, :cond_2

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00b9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    goto :goto_2

    :cond_2
    iput v11, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    :goto_2
    cmpl-float v14, v12, v13

    if-nez v14, :cond_3

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00b8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v14

    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    goto :goto_3

    :cond_3
    iput v12, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500ce

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x10500cd

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v0, 0x10500cc

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v15

    cmpl-float v0, v14, v13

    if-eqz v0, :cond_5

    cmpl-float v0, v5, v13

    if-eqz v0, :cond_5

    cmpl-float v0, v15, v13

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iput v14, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    iput v15, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    goto :goto_5

    :cond_5
    :goto_4
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e00bc

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e00bb

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e00ba

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    :goto_5
    monitor-enter v4

    :try_start_0
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v1, v0}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    const-string v0, "PowerManagerService.Display"

    invoke-virtual {v3, v1, v0}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    const-string v0, "ro.boot.quiescent"

    const-string v13, "0"

    invoke-interface {v7, v0, v13}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Landroid/sysprop/InitProperties;->userspace_reboot_in_progress()Ljava/util/Optional;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    invoke-virtual {v6, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeInit(Lcom/android/server/power/PowerManagerService;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V

    const/4 v7, 0x7

    const/4 v13, 0x1

    invoke-virtual {v6, v7, v13}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    invoke-virtual {v6, v0, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayGroupPowerStateMapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method static synthetic access$1500(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerBoost(II)V

    return-void
.end method

.method static synthetic access$1600(IZ)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/PowerManagerService;IJIII)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IJIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSandman(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleAttentiveTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/PowerManagerService;IJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->setGlobalWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;IJIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;IJILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->wakeDisplayGroup(IJILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;IJIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->sleepDisplayGroup(IJIII)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;IJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->dreamDisplayGroup(IJI)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object v0
.end method

.method static synthetic access$576(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-wide v0
.end method

.method static synthetic access$6202(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-wide p1
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-wide v0
.end method

.method static synthetic access$6302(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-wide p1
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastSleepReasonInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->forceSuspendInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(F)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastWakeupInternal()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return p1
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 21

    move-object/from16 v13, p0

    move/from16 v14, p2

    move/from16 v12, p8

    iget-object v11, v13, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v0, -0x1

    if-eq v14, v0, :cond_3

    :try_start_0
    iget-boolean v0, v13, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, v13, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to acquire wake lock for invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    return-void

    :cond_1
    invoke-virtual {v0, v12}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Caller does not have access to display"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    move v10, v0

    if-ltz v10, :cond_5

    iget-object v0, v13, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/power/PowerManagerService$WakeLock;

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p6

    move/from16 v19, p8

    move/from16 v20, p9

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v0

    if-nez v0, :cond_4

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move-object v1, v15

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    :cond_4
    const/4 v0, 0x0

    move-object/from16 v2, p1

    move/from16 v16, v10

    move-object/from16 v17, v11

    move v14, v12

    move-object v1, v15

    goto :goto_3

    :cond_5
    iget-object v0, v13, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v0, :cond_6

    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, v12}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v0, v1

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    iget-object v1, v13, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v15, v0

    goto :goto_2

    :cond_6
    move-object v15, v0

    :goto_2
    iget v0, v15, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v15, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v16, v10

    move/from16 v10, p8

    move-object/from16 v17, v11

    move/from16 v11, p9

    move v14, v12

    move-object v12, v15

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    const/4 v0, 0x0

    move-object/from16 v2, p1

    :try_start_2
    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    nop

    :try_start_3
    iget-object v0, v13, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v13, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    const/4 v0, 0x1

    :goto_3
    invoke-direct {v13, v1, v14}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    iget v3, v13, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    if-eqz v0, :cond_7

    invoke-direct {v13, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_7
    monitor-exit v17

    return-void

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock is already dead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v17, v11

    move v14, v12

    :goto_4
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method private static adjustWakeLockSummaryLocked(II)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    and-int/lit16 p1, p1, -0xc1

    :cond_0
    if-eqz p0, :cond_1

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    :cond_1
    and-int/lit8 p1, p1, -0xf

    if-nez p0, :cond_2

    and-int/lit8 p1, p1, -0x11

    :cond_2
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    or-int/lit8 p1, p1, 0x21

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    or-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_5

    or-int/lit8 p1, p1, 0x1

    :cond_5
    return p1
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getUid(I)I

    move-result v4

    :goto_1
    move-object v11, v3

    move v12, v4

    goto :goto_2

    :cond_2
    iget-object v3, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v11, v3

    move v12, v4

    :goto_2
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v13

    array-length v14, v13

    move v15, v1

    :goto_3
    if-ge v15, v14, :cond_3

    aget v16, v13, v15

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v6, v12

    move-object v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakeDisplayGroupNoUpdateLocked(IJILjava/lang/String;ILjava/lang/String;I)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_0
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness boost activated (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v4, p1

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IJIII)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canDozeLocked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDreamLocked(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getPowerRequestLocked(I)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getUserActivitySummaryLocked(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(I)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v4, :cond_1

    return v2

    :cond_1
    if-nez v1, :cond_2

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v4, :cond_2

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v5, v4, :cond_2

    return v2

    :cond_2
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v1, :cond_3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-lt v4, v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v2
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private dreamDisplayGroup(IJI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->dreamDisplayGroupNoUpdateLocked(IJI)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dreamDisplayGroupNoUpdateLocked(IJI)Z
    .locals 16

    move-object/from16 v11, p0

    move/from16 v12, p1

    iget-wide v0, v11, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v14, 0x20000

    const-string v0, "napDisplayGroup"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Napping display group (groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setSandmanSummoned(IZ)V

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v13

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "Power Manager State:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDirty=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakefulness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v5

    invoke-static {v5}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakefulnessChanging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDockState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStayOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mProximityPositive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBootCompleted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSystemReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mEnhancedDischargeTimeElapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mLastEnhancedDischargeTimeUpdatedElapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mEnhancedDischargePredictionIsPersonalized="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHalInteractiveModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakeLockSummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  mNotifyLongScheduled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-string v4, "(none)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v8}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v4, "  mNotifyLongDispatched="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const-string v4, "(none)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v8}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v4, "  mNotifyLongNextCheck="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    const-string v4, "(none)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v6}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mInterceptedPowerKeyForProximity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSandmanScheduled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mBatteryLevelLow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLightDeviceIdleMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDeviceIdleMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDeviceIdleWhitelist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastWakeTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastSleepTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastSleepReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    invoke-static {v5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastInteractivePowerHintTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mLastFlipTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mIsFaceDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v4, "Settings and Configuration:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTheaterModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsSupportedConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsEnabledSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDozeAfterScreenOff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAttentiveTimeoutConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAttentiveTimeoutSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAttentiveWarningDurationConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenOffTimeoutSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSleepTimeoutSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " (enforced="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessModeSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessMinimum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessMaximum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mScreenBrightnessDefault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDoubleTapWakeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mIsVrModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mForegroundProfile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v6

    invoke-direct {v1, v6, v7, v4, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attentive timeout: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sleep timeout: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screen off timeout: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screen dim duration: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v12, "UID states (changing="

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v12, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Z)V

    const-string v12, " changed="

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v12, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Z)V

    const-string v12, "):"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_3
    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/PowerManagerService$UidState;

    const-string v14, "  UID "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-static {v2, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v14, ": "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v14, v13, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v14, :cond_3

    const-string v14, "  ACTIVE "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v14, "INACTIVE "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4
    const-string v14, " count="

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, " state="

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v13, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v12, "Looper state:"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v14, "  "

    invoke-virtual {v12, v13, v14}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wake Locks: size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/PowerManagerService$WakeLock;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspend Blockers: size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/SuspendBlocker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Display Power: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v12, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v12, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v12, v2}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Profile power states: size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_7

    iget-object v14, v1, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    const-string v15, "  mUserId="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v15, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, " mScreenOffTimeout="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide v15, v4

    iget-wide v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " mWakeLockSummary="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mLastUserActivityTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " mLockingNotified="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v14, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v13, v13, 0x1

    move-wide v4, v15

    goto :goto_7

    :cond_7
    move-wide v15, v4

    const-string v4, "Display Group User Activity:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v4

    array-length v5, v4

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v5, :cond_8

    aget v14, v4, v13

    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v5

    const-string v5, "  displayGroupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  userActivitySummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5, v14}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getUserActivitySummaryLocked(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  lastUserActivityTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5, v14}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  lastUserActivityTimeNoChangeLights="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5, v14}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeNoChangeLightsLocked(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mWakeLockSummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5, v14}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_8

    :cond_8
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_9

    invoke-virtual {v4, v2}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    :cond_9
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Lcom/android/server/power/Notifier;->dump(Ljava/io/PrintWriter;)V

    :cond_a
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v3, v2}, Lcom/android/server/power/FaceDownDetector;->dump(Ljava/io/PrintWriter;)V

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {v3, v2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    :catchall_1
    move-exception v0

    move-object v4, v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 33

    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v0, v3}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    const-wide v5, 0x10500000002L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10e00000003L

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v5, 0x10800000004L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v7, 0x10800000005L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v9, 0x10e00000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000007L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000008L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10e00000009L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v9, 0x1080000000aL

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v13, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v13, 0x1080000000dL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v14, 0x10300000034L

    :try_start_1
    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v3, v14, v15, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10300000035L

    iget-wide v14, v1, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v3, v11, v12, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10800000036L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v11, 0x1080000000eL

    :try_start_2
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v11, 0x1080000000fL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v13, 0x10b00000010L

    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v15, 0x1

    and-int/2addr v0, v15

    const/16 v18, 0x0

    if-eqz v0, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move/from16 v0, v18

    :goto_0
    const-wide v11, 0x10800000001L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v15

    goto :goto_1

    :cond_1
    move/from16 v0, v18

    :goto_1
    const-wide v9, 0x10800000002L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v15

    goto :goto_2

    :cond_2
    move/from16 v0, v18

    :goto_2
    const-wide v9, 0x10800000003L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v15

    goto :goto_3

    :cond_3
    move/from16 v0, v18

    :goto_3
    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v15

    goto :goto_4

    :cond_4
    move/from16 v0, v18

    :goto_4
    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v15

    goto :goto_5

    :cond_5
    move/from16 v0, v18

    :goto_5
    const-wide v7, 0x10800000006L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move v0, v15

    goto :goto_6

    :cond_6
    move/from16 v0, v18

    :goto_6
    const-wide v7, 0x10800000007L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move v0, v15

    goto :goto_7

    :cond_7
    move/from16 v0, v18

    :goto_7
    const-wide v7, 0x10800000008L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v7, 0x10300000011L

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000012L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000013L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v0

    array-length v5, v0

    move/from16 v6, v18

    :goto_8
    if-ge v6, v5, :cond_b

    aget v7, v0, v6

    const-wide v9, 0x20b00000014L

    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v11, 0x10500000006L

    invoke-virtual {v3, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v10, v7}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getUserActivitySummaryLocked(I)I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v27, 0x1

    and-long v27, v10, v27

    const-wide/16 v29, 0x0

    cmp-long v12, v27, v29

    if-eqz v12, :cond_8

    move v12, v15

    goto :goto_9

    :cond_8
    move/from16 v12, v18

    :goto_9
    move-wide/from16 v27, v13

    const-wide v13, 0x10800000001L

    invoke-virtual {v3, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v12, 0x2

    and-long/2addr v12, v10

    cmp-long v12, v12, v29

    if-eqz v12, :cond_9

    move v12, v15

    goto :goto_a

    :cond_9
    move/from16 v12, v18

    :goto_a
    const-wide v13, 0x10800000002L

    invoke-virtual {v3, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v12, 0x4

    and-long/2addr v12, v10

    cmp-long v12, v12, v29

    if-eqz v12, :cond_a

    move v12, v15

    goto :goto_b

    :cond_a
    move/from16 v12, v18

    :goto_b
    const-wide v13, 0x10800000003L

    invoke-virtual {v3, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v14, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v14, v7}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v12

    move-wide/from16 v31, v10

    const-wide v10, 0x10300000004L

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10300000005L

    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v12, v7}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeNoChangeLightsLocked(I)J

    move-result-wide v12

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v13, v27

    const-wide v9, 0x10800000003L

    const-wide v11, 0x10800000001L

    goto/16 :goto_8

    :cond_b
    move-wide/from16 v27, v13

    const-wide v5, 0x10800000015L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10800000016L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10800000018L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const-wide v5, 0x10800000019L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x1080000001aL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v7, v0

    move/from16 v8, v18

    :goto_c
    if-ge v8, v7, :cond_c

    aget v9, v0, v8

    const-wide v10, 0x2050000001bL

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_c
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v7, v0

    move/from16 v8, v18

    :goto_d
    if-ge v8, v7, :cond_d

    aget v9, v0, v8

    const-wide v10, 0x2050000001cL

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_d
    const-wide v7, 0x1030000001dL

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1030000001eL

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000021L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000022L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const-wide v7, 0x10800000023L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v9, 0x10800000025L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v9, 0x10800000026L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v9, 0x10b00000027L

    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const-wide v11, 0x10800000001L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const-wide v11, 0x10800000002L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v11, 0x10800000003L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v11, 0x10800000004L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v11, 0x10800000005L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v11, 0x10800000006L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v11, 0x10800000007L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-wide v11, 0x10800000008L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x10800000009L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v11, 0x1080000000aL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x1110000000cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x1110000000dL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x1110000000eL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v11, 0x1080000000fL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x10800000010L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x10800000011L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x10500000013L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10500000014L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10200000015L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v11, 0x10500000016L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x11100000017L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x11100000025L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x11100000026L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x11100000027L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10500000018L

    iget-wide v13, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v7, 0x7fffffff

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v3, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10b0000001aL

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/2addr v0, v15

    if-eqz v0, :cond_e

    move v0, v15

    goto :goto_e

    :cond_e
    move/from16 v0, v18

    :goto_e
    const-wide v7, 0x10800000001L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    move v0, v15

    goto :goto_f

    :cond_f
    move/from16 v0, v18

    :goto_f
    const-wide v7, 0x10800000002L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    goto :goto_10

    :cond_10
    move/from16 v15, v18

    :goto_10
    const-wide v7, 0x10800000003L

    invoke-virtual {v3, v7, v8, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v7, 0x10e0000001bL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x1110000001cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v7, 0x1120000001dL

    iget-wide v11, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1080000001eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10e0000001fL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10800000024L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10200000020L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10b00000021L

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v11, 0x10200000004L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v11, 0x10200000005L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v11, 0x10200000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v11, 0x10800000022L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    const-wide v11, 0x10800000023L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v11

    invoke-direct {v1, v11, v12}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v13

    invoke-direct {v1, v13, v14, v11, v12}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v15

    move-wide/from16 v17, v15

    move-wide v15, v5

    move-wide/from16 v5, v17

    invoke-direct {v1, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v17

    move-wide/from16 v19, v17

    move-wide/from16 v17, v7

    const-wide v7, 0x11100000033L

    invoke-virtual {v3, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x11100000028L

    invoke-virtual {v3, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10500000029L

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1050000002aL

    move-wide/from16 v21, v5

    move-wide/from16 v5, v19

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1080000002bL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x1080000002cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    :goto_11
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_11

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$UidState;

    move-wide/from16 v19, v5

    const-wide v5, 0x20b0000002dL

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move-wide/from16 v23, v9

    const-wide v9, 0x10500000001L

    invoke-virtual {v3, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v25, v11

    const-wide v10, 0x10900000002L

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-boolean v9, v7, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v10, 0x10800000003L

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v10, 0x10500000004L

    iget v9, v7, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10e00000005L

    iget v11, v7, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-static {v11}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v11

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v19

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    goto :goto_11

    :cond_11
    move-wide/from16 v19, v5

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v5, 0x10b00000032L

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v5, 0x10b0000002eL

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    const-wide v6, 0x20b0000002fL

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_12

    :cond_12
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/SuspendBlocker;

    const-wide v6, 0x20b00000030L

    invoke-interface {v5, v3, v6, v7}, Lcom/android/server/power/SuspendBlocker;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_13

    :cond_13
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_14

    const-wide v4, 0x10b00000031L

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_14
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .locals 2

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->areAllDisplaysReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    :cond_3
    return-void
.end method

.method private forceSuspendInternal(I)Z
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v7, v3, v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v6}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    const/16 v10, 0x8

    const/4 v11, 0x1

    move-object v6, p0

    move v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/server/power/PowerManagerService;->sleepDisplayGroupNoUpdateLocked(IJIII)Z

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-Suspending (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeForceSuspend()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "PowerManagerService"

    const-string v3, "Force-Suspending failed in native."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    nop

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method private getAttentiveTimeoutLocked()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .locals 4

    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v3

    if-lez v3, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getLastSleepReasonInternal()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLastWakeupInternal()Landroid/os/PowerManager$WakeData;
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v7, Landroid/os/PowerManager$WakeData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    sub-long v5, v2, v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$WakeData;-><init>(JIJ)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNextProfileTimeoutLocked(J)J
    .locals 9

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v7, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v5, v7

    cmp-long v7, v5, p1

    if-lez v7, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_0

    cmp-long v7, v5, v0

    if-gez v7, :cond_1

    :cond_0
    move-wide v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private getScreenDimDurationLocked(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getScreenOffTimeoutLocked(JJ)J
    .locals 7

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    cmp-long v2, p1, v4

    if-ltz v2, :cond_2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2
    cmp-long v2, p3, v4

    if-ltz v2, :cond_3

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getScreenOffTimeoutWithFaceDownLocked(JJ)J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    if-eqz v0, :cond_0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method private getSleepTimeoutLocked(J)J
    .locals 5

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .locals 2

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x80

    return v0

    :sswitch_1
    const/16 v0, 0x40

    return v0

    :sswitch_2
    const/16 v0, 0x10

    return v0

    :sswitch_3
    const/16 v0, 0xa

    return v0

    :sswitch_4
    const/4 v0, 0x2

    return v0

    :sswitch_5
    const/4 v0, 0x4

    return v0

    :sswitch_6
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x6 -> :sswitch_5
        0xa -> :sswitch_4
        0x1a -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleAttentiveTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private handleSandman(I)V
    .locals 20

    move-object/from16 v10, p0

    move/from16 v11, p1

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v10, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    iget-object v2, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v2}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v3, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v3, v11}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v3

    move v12, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v12, v3, :cond_1

    if-ne v12, v5, :cond_4

    :cond_1
    iget-object v6, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v6, v11}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->isSandmanSummoned(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v6, v11}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->isReady(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v4

    :goto_1
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v7, v11, v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setSandmanSummoned(IZ)V

    move v13, v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    move v13, v6

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_7

    if-eqz v13, :cond_6

    invoke-virtual {v1, v0}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v12, v5, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    :cond_6
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    move v14, v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    move v14, v1

    :goto_4
    iput-boolean v0, v10, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    iget-object v15, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_1
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v1

    move-object v9, v1

    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_8

    monitor-exit v15

    return-void

    :cond_8
    if-eqz v13, :cond_a

    if-eqz v14, :cond_a

    iget v1, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    if-ne v12, v5, :cond_9

    const-string v1, "PowerManagerService"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const-string v1, "PowerManagerService"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, v11}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->isSandmanSummoned(I)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, v11}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v1

    if-eq v1, v12, :cond_b

    move-object/from16 v19, v9

    goto/16 :goto_a

    :cond_b
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    move-wide v7, v1

    if-ne v12, v3, :cond_10

    if-eqz v14, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_c

    iget v2, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v3, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(I)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%.  Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    monitor-exit v15

    return-void

    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {v10, v11, v7, v8}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(IJ)Z

    move-result v1

    if-eqz v1, :cond_e

    move v6, v4

    goto :goto_7

    :cond_e
    move v6, v0

    :goto_7
    const/4 v5, 0x2

    const/16 v16, 0x3e8

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v7

    move-wide/from16 v17, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->sleepDisplayGroupNoUpdateLocked(IJIII)Z

    move-object/from16 v19, v9

    goto :goto_8

    :cond_f
    move-wide/from16 v17, v7

    const/4 v5, 0x0

    const-string v6, "android.server.power:DREAM_FINISHED"

    const/16 v7, 0x3e8

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x3e8

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, v17

    move-object/from16 v19, v9

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->wakeDisplayGroupNoUpdateLocked(IJILjava/lang/String;ILjava/lang/String;I)Z

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_9

    :cond_10
    move-wide/from16 v17, v7

    move-object/from16 v19, v9

    if-ne v12, v5, :cond_12

    if-eqz v14, :cond_11

    monitor-exit v15

    return-void

    :cond_11
    const/16 v1, 0x3e8

    move-wide/from16 v2, v17

    invoke-direct {v10, v11, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallySleepDisplayGroupNoUpdateLocked(IJI)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_9

    :cond_12
    move-wide/from16 v2, v17

    :goto_9
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_13

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v0}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    :cond_13
    return-void

    :cond_14
    move-object/from16 v19, v9

    :goto_a
    :try_start_2
    monitor-exit v15

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleUidStateChangeLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    :goto_0
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private incrementBootCount()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    nop

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_count"

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getPowerRequestLocked(I)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal;->ignoreProximitySensorUntilChanged()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAttentiveTimeoutExpired(IJ)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isBeingKeptAwakeLocked(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getUserActivitySummaryLocked(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_0

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

.method private isBeingKeptFromInattentiveSleepLocked(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getUserActivitySummaryLocked(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

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

.method private isBeingKeptFromShowingInattentiveSleepWarningLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

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

.method private isInteractiveInternal()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isItBedTimeYetLocked(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(IJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .locals 4

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

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

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidBrightness(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :try_start_0
    monitor-exit v0

    goto :goto_0

    :sswitch_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    monitor-exit v0

    return v1

    :sswitch_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :goto_0
    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
        0xa -> :sswitch_1
        0x1a -> :sswitch_1
        0x20 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private logSleepTimeoutRecapturedLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_0
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "quiescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ",quiescent"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    const-string v0, "recovery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "recovery-update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string p0, "recovery"

    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const-string v0, "PowerManagerService"

    const-string v1, "Unexpected return from lowLevelReboot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private maybeHideInattentiveSleepWarningLocked(JJ)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2, v3}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    return v4

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromShowingInattentiveSleepWarningLocked()Z

    move-result v2

    if-nez v2, :cond_3

    cmp-long v2, p1, p3

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2, v4}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    return v4
.end method

.method private maybeUpdateForegroundProfileLastActivityLocked(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    iput-wide p1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    :cond_0
    return-void
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeForceSuspend()Z
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetPowerBoost(II)V
.end method

.method private static native nativeSetPowerMode(IZ)Z
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->areAllDisplaysReadyLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v6, v5}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getPowerRequestLocked(I)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-nez v7, :cond_4

    :cond_3
    return v1

    :cond_4
    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v7, v1, :cond_5

    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    return v1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_0
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_0
    return-void
.end method

.method private onFlip(Z)V
    .locals 19

    move-object/from16 v8, p0

    move/from16 v9, p1

    const-wide/16 v1, 0x0

    iget-object v10, v8, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v0, v8, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_0

    monitor-exit v10

    return-void

    :cond_0
    iput-boolean v9, v8, Lcom/android/server/power/PowerManagerService;->mIsFaceDown:Z

    if-eqz v9, :cond_1

    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    move-wide v11, v3

    iput-wide v11, v8, Lcom/android/server/power/PowerManagerService;->mLastFlipTime:J

    const-wide/16 v3, -0x1

    invoke-direct {v8, v3, v4}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v5

    move-wide v13, v5

    invoke-direct {v8, v13, v14, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v3

    move-wide v15, v3

    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-long/2addr v3, v15

    sub-long v17, v3, v11

    const/4 v2, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object/from16 v1, p0

    move-wide v3, v11

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v1, v17

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v1, v17

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_2

    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/FaceDownDetector;->setMillisSaved(J)V

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private onUserAttention()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IJIII)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reallySleepDisplayGroupNoUpdateLocked(IJI)Z
    .locals 16

    move-object/from16 v11, p0

    move/from16 v12, p1

    iget-wide v0, v11, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, v12}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v0

    if-nez v0, :cond_0

    move/from16 v15, p4

    goto :goto_1

    :cond_0
    const-wide/32 v13, 0x20000

    const-string v0, "reallySleepDisplayGroup"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping display group (groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v15, p4

    :try_start_1
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v15, p4

    :goto_0
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    move/from16 v15, p4

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PowerManagerService"

    const-string v5, "Failed to unlink wakelock"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v1, :cond_0

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    :cond_0
    return-void
.end method

.method private scheduleAttentiveTimeout(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5, v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->isSandmanSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput v4, v5, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scheduleUserInactivityTimeout(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, p2, v0, v3, v2}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setDozeAfterScreenOffInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v1, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    nop

    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setGlobalWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const-string v0, ")..."

    const-string v5, "PowerManagerService"

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    move-object/from16 v13, p8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected wakefulness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v7, "goToSleep"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Going to sleep due to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    iput v11, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    iput-boolean v6, v1, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    move-object/from16 v13, p8

    move-object v14, v7

    goto/16 :goto_0

    :pswitch_1
    const-string v7, "nap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Nap time (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p8

    move-object v14, v7

    goto :goto_0

    :pswitch_2
    const-string v7, "wakeUp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waking up from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v9

    invoke-static {v9}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", details="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    iput v11, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    move-object v14, v7

    goto :goto_0

    :pswitch_3
    move-object/from16 v13, p8

    const-string v7, "reallyGoToSleep"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sleeping (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v7

    :goto_0
    const-wide/32 v9, 0x20000

    invoke-static {v9, v10, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    iput-boolean v6, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-int/2addr v0, v6

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v11, v3, v4}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(IIJ)V

    :cond_2
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v0, v2}, Lcom/android/server/power/AttentionDetector;->onWakefulnessChangeStarted(I)V

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    move-wide v15, v9

    goto :goto_4

    :pswitch_5
    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v15, 0xffff

    and-int/2addr v8, v15

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V

    move-wide v15, v9

    goto :goto_4

    :pswitch_6
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v6, p4

    move-object/from16 v7, p8

    move/from16 v8, p5

    move-wide v15, v9

    move-object/from16 v9, p7

    move/from16 v10, p6

    :try_start_1
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/power/Notifier;->onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    move-wide v15, v9

    :goto_5
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPowerBoostInternal(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerBoost(II)V

    return-void
.end method

.method private setPowerModeInternal(IZ)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v1, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 7

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const/16 v5, 0x14

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v6, 0xb

    if-le v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    move v0, v4

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v6, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v6, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-gez v6, :cond_3

    iget v6, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v6, v5, :cond_3

    iget v5, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v6, 0x5

    if-le v5, v6, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-boolean v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v4, v0, :cond_4

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    return v2

    :cond_4
    return v1
.end method

.method private shouldBoostScreenBrightness()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_0

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

.method private shouldUseProximitySensorLocked()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v2, :cond_1

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v2, v0, :cond_2

    if-nez p3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .locals 3

    const-string v0, "userspace"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/UserspaceRebootLogger;->noteUserspaceRebootWasRequested()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p4, :cond_4

    monitor-enter v0

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too early to call shutdown() or reboot()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sleepDisplayGroup(IJIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->sleepDisplayGroupNoUpdateLocked(IJIII)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sleepDisplayGroupNoUpdateLocked(IJIII)Z
    .locals 22

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move/from16 v15, p6

    iget-wide v0, v11, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, v13, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_0

    move/from16 v2, p4

    goto/16 :goto_1

    :cond_0
    iget-object v0, v11, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, v12}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-wide/32 v9, 0x20000

    const-string v0, "powerOffDisplay"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v0, 0xc

    move/from16 v2, p4

    :try_start_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Powering off display group due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (groupId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    const/4 v8, 0x1

    invoke-virtual {v0, v12, v8}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setSandmanSummoned(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x3

    const/4 v0, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p6

    move/from16 v19, v8

    move v8, v0

    move-wide/from16 v20, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    :try_start_2
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_2

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/android/server/power/PowerManagerService;->reallySleepDisplayGroupNoUpdateLocked(IJI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v19

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v20, v9

    goto :goto_0

    :catchall_2
    move-exception v0

    move-wide/from16 v20, v9

    move v7, v2

    :goto_0
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_3
    move/from16 v2, p4

    goto :goto_1

    :cond_4
    move/from16 v2, p4

    :goto_1
    return v1
.end method

.method private updateAttentiveStateLocked(JI)V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    sub-long v4, v2, v4

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/power/PowerManagerService;->maybeHideInattentiveSleepWarningLocked(JJ)Z

    move-result v6

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-ltz v9, :cond_4

    if-nez v6, :cond_0

    and-int/lit16 v9, p3, 0x4ab2

    if-eqz v9, :cond_4

    :cond_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromShowingInattentiveSleepWarningLocked()Z

    move-result v9

    if-eqz v9, :cond_1

    return-void

    :cond_1
    const-wide/16 v9, -0x1

    cmp-long v11, p1, v4

    if-gez v11, :cond_2

    move-wide v9, v4

    goto :goto_0

    :cond_2
    cmp-long v11, p1, v2

    if-gez v11, :cond_3

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v11}, Lcom/android/server/power/InattentiveSleepWarningController;->show()V

    move-wide v9, v2

    :cond_3
    :goto_0
    cmp-long v7, v9, v7

    if-ltz v7, :cond_4

    invoke-direct {p0, v9, v10}, Lcom/android/server/power/PowerManagerService;->scheduleAttentiveTimeout(J)V

    :cond_4
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v2}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->areAllDisplaysReadyLocked()Z

    move-result v2

    const v3, 0x1383f

    and-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->areAllDisplaysReadyLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    sput-boolean v5, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v3

    array-length v6, v3

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_9

    aget v8, v3, v7

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v9, v8}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getPowerRequestLocked(I)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked(I)I

    move-result v10

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v10, :cond_2

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    goto :goto_3

    :cond_2
    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(F)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    goto :goto_3

    :cond_3
    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v10, v4, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    move v10, v5

    :goto_2
    const/high16 v11, 0x7fc00000    # Float.NaN

    :goto_3
    iput v11, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v12

    iput-boolean v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v12

    iput-boolean v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    invoke-virtual {v0, v9}, Lcom/android/server/power/PowerManagerService;->updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iget v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v12, v4, :cond_7

    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v12, v8}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_6

    iget-boolean v12, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-nez v12, :cond_6

    iget v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    const/4 v12, 0x3

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    :cond_5
    iget v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_6

    const/4 v12, 0x2

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    :cond_6
    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    goto :goto_4

    :cond_7
    iput v5, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/high16 v12, 0x7fc00000    # Float.NaN

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    :goto_4
    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-boolean v13, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v12, v8, v9, v13}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v12

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v14, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v13, v14}, Lcom/android/server/power/Notifier;->onScreenPolicyUpdate(I)V

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v13, v8, v12}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setDisplayGroupReadyLocked(IZ)Z

    move-result v13

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v14, v8}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->isPoweringOnLocked(I)Z

    move-result v14

    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    if-eqz v14, :cond_8

    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v15, v8}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v15

    if-ne v15, v4, :cond_8

    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v15, v8, v5}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setPoweringOnLocked(IZ)V

    const-wide/32 v4, 0x20000

    const-string v15, "Screen turning on"

    invoke-static {v4, v5, v15, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v15, v8}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastPowerOnTimeLocked(I)J

    move-result-wide v16

    sub-long v4, v4, v16

    long-to-int v4, v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Screen on took "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " ms"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v15, "PowerManagerService"

    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    goto :goto_5

    :cond_a
    move v3, v5

    :goto_5
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->areAllDisplaysReadyLocked()Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v2, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    move v4, v3

    :goto_6
    return v4
.end method

.method private updateDreamLocked(IZ)V
    .locals 1

    and-int/lit16 v0, p1, 0x43ff

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->areAllDisplaysReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    :cond_1
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v10, p1

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_4

    iget-boolean v11, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v12, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    iput v0, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    iput v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    iget-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v11, v0, :cond_0

    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v12, v1, :cond_3

    :cond_0
    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget v2, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/WirelessChargerDetector;->update(ZI)Z

    move-result v13

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v14

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v4, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.server.power:PLUGGED:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3e8

    move-object/from16 v0, p0

    move-wide v2, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakeDisplayGroupNoUpdateLocked(IJILjava/lang/String;ILjava/lang/String;I)Z

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object/from16 v0, p0

    move-wide v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IJIII)Z

    iget-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_2

    invoke-static {v12}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v9, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-static {v0}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->onWiredChargingStarted(I)V

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_3

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, v9, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted(II)V

    :cond_3
    :goto_0
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v2, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v3, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    :cond_4
    return-void
.end method

.method private updatePowerStateLocked()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/32 v0, 0x20000

    const-string v2, "updatePowerState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v4, v5

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/power/PowerManagerService;->updateAttentiveStateLocked(JI)V

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v6

    if-nez v6, :cond_2

    nop

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method private updateProfilesLocked(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_1

    :cond_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .locals 9

    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_1
    return-void
.end method

.method private updateSettingsLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-string v2, "screensaver_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    nop

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const-string v5, "screensaver_activate_on_sleep"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    nop

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-string v5, "screensaver_activate_on_dock"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    const/16 v1, 0x3a98

    const-string v5, "screen_off_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    const/4 v1, -0x1

    const-string v5, "sleep_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const-string v5, "attentive_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "theater_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_5

    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    move v1, v2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v2, :cond_5

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    :cond_5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    goto :goto_5

    :cond_6
    const-string v1, "0"

    :goto_5
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const/4 v5, 0x0

    const-string v6, "sys.retaildemo.enabled"

    invoke-interface {v2, v6, v5}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    invoke-interface {v2, v6, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method private updateStayOnLocked(I)V
    .locals 3

    and-int/lit16 v0, p1, 0x120

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_1
    return-void
.end method

.method private updateSuspendBlockerLocked()V
    .locals 11

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v5

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget v9, v5, v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v10, v9}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getPowerRequestLocked(I)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v10

    or-int/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v7, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_3
    if-eqz v3, :cond_4

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_4
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v7, :cond_6

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v7}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->areAllDisplaysReadyLocked()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    :cond_6
    if-nez v0, :cond_7

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7}, Lcom/android/server/power/SuspendBlocker;->release()V

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_7
    if-nez v3, :cond_8

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7}, Lcom/android/server/power/SuspendBlocker;->release()V

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_8
    if-eqz v4, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v2, :cond_9

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_9
    return-void
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 35

    move-object/from16 v0, p0

    const v1, 0x10027

    and-int v1, p3, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v9

    nop

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutWithFaceDownLocked(JJ)J

    move-result-wide v7

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v14}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v14

    array-length v15, v14

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_0
    const-wide/16 v17, 0x0

    if-ge v2, v15, :cond_12

    move-wide/from16 v19, v3

    aget v3, v14, v2

    const/4 v4, 0x0

    const-wide/16 v21, 0x0

    move/from16 v23, v4

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v4, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    move-object/from16 v24, v14

    move/from16 v25, v15

    invoke-virtual {v4, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v14

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    move-wide/from16 v26, v11

    invoke-virtual {v4, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeNoChangeLightsLocked(I)J

    move-result-wide v11

    move v4, v1

    move/from16 v28, v2

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v29, v14, v1

    if-ltz v29, :cond_2

    add-long v29, v14, v7

    sub-long v21, v29, v9

    cmp-long v29, p1, v21

    if-gez v29, :cond_1

    const/16 v23, 0x1

    goto :goto_1

    :cond_1
    add-long v21, v14, v7

    cmp-long v29, p1, v21

    if-gez v29, :cond_2

    const/16 v23, 0x2

    :cond_2
    :goto_1
    move/from16 v29, v13

    if-nez v23, :cond_5

    cmp-long v1, v11, v1

    if-ltz v1, :cond_5

    add-long v21, v11, v7

    cmp-long v1, p1, v21

    if-gez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getPowerRequestLocked(I)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v1

    iget v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x3

    if-eq v2, v13, :cond_4

    iget v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x4

    if-ne v2, v13, :cond_3

    goto :goto_2

    :cond_3
    iget v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x2

    if-ne v2, v13, :cond_5

    const/16 v23, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v23, 0x1

    :cond_5
    :goto_3
    if-nez v23, :cond_9

    cmp-long v1, v5, v17

    if-ltz v1, :cond_8

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide/from16 v31, v7

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v7, v1, v7

    if-ltz v7, :cond_7

    add-long v7, v1, v5

    cmp-long v13, p1, v7

    if-gez v13, :cond_6

    const/4 v13, 0x4

    move-wide/from16 v21, v7

    move/from16 v23, v13

    goto :goto_4

    :cond_6
    move-wide/from16 v21, v7

    :cond_7
    :goto_4
    move-wide/from16 v1, v21

    move/from16 v7, v23

    goto :goto_5

    :cond_8
    move-wide/from16 v31, v7

    const/16 v23, 0x4

    const-wide/16 v21, -0x1

    move-wide/from16 v1, v21

    move/from16 v7, v23

    goto :goto_5

    :cond_9
    move-wide/from16 v31, v7

    move-wide/from16 v1, v21

    move/from16 v7, v23

    :goto_5
    const-wide/16 v17, -0x1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    if-eqz v4, :cond_c

    and-int/lit8 v8, v7, 0x3

    if-eqz v8, :cond_a

    move-wide/from16 v33, v5

    move v6, v4

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    cmp-long v4, v4, v17

    if-nez v4, :cond_b

    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    goto :goto_6

    :cond_a
    move-wide/from16 v33, v5

    move v6, v4

    :cond_b
    :goto_6
    const/4 v4, 0x4

    const-wide/16 v1, -0x1

    goto :goto_7

    :cond_c
    move-wide/from16 v33, v5

    move v6, v4

    move v4, v7

    :goto_7
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5, v3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_d

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v5, v1, v2, v9, v10}, Lcom/android/server/power/AttentionDetector;->updateUserActivity(JJ)J

    move-result-wide v1

    :cond_d
    if-eqz v4, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    move/from16 v5, v16

    :goto_8
    or-int v5, v29, v5

    cmp-long v7, v26, v17

    if-nez v7, :cond_f

    move-wide v7, v1

    move-wide/from16 v21, v1

    move v13, v5

    move-wide v11, v7

    goto :goto_9

    :cond_f
    cmp-long v7, v1, v17

    if-eqz v7, :cond_10

    move-wide/from16 v7, v26

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide/from16 v21, v1

    move v13, v5

    move-wide v11, v7

    goto :goto_9

    :cond_10
    move-wide/from16 v7, v26

    move-wide/from16 v21, v1

    move v13, v5

    move-wide v11, v7

    goto :goto_9

    :cond_11
    move/from16 v28, v2

    move-wide/from16 v33, v5

    move-wide/from16 v31, v7

    move-wide v7, v11

    move/from16 v29, v13

    move-object/from16 v24, v14

    move/from16 v25, v15

    move v6, v1

    move/from16 v4, v23

    :goto_9
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setUserActivitySummaryLocked(II)V

    add-int/lit8 v2, v28, 0x1

    move v1, v6

    move-wide/from16 v3, v19

    move-object/from16 v14, v24

    move/from16 v15, v25

    move-wide/from16 v7, v31

    move-wide/from16 v5, v33

    goto/16 :goto_0

    :cond_12
    move-wide/from16 v19, v3

    move-wide/from16 v33, v5

    move-wide/from16 v31, v7

    move-wide v7, v11

    move/from16 v29, v13

    move v6, v1

    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v1

    cmp-long v3, v1, v17

    if-lez v3, :cond_13

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_a

    :cond_13
    move-wide v11, v7

    :goto_a
    if-eqz v29, :cond_14

    cmp-long v3, v11, v17

    if-ltz v3, :cond_14

    invoke-direct {v0, v11, v12}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    :cond_14
    return-void
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_3
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 11

    const v0, 0x10003

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput v0, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v2}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v6, v5, v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setWakeLockSummaryLocked(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$WakeLock;->getDisplayGroupId()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_5

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v8, v7

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v8

    or-int/2addr v8, v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setWakeLockSummaryLocked(II)V

    goto :goto_3

    :cond_3
    or-int/2addr v2, v7

    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v1, :cond_5

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-direct {p0, v5, v10}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v10, v7

    iput v10, v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v4

    array-length v5, v4

    :goto_6
    if-ge v0, v5, :cond_7

    aget v6, v4, v0

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v7, v6}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v8, v6}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v8

    or-int/2addr v8, v2

    invoke-static {v7, v8}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setWakeLockSummaryLocked(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v0, v4}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_8

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v5

    iget v6, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-static {v5, v6}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(II)I

    move-result v5

    iput v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    return-void
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p2

    iget-object v12, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ltz v0, :cond_1

    :try_start_1
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v13, v1

    invoke-virtual {v13, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v3, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v1, p0

    move-object v2, v13

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p3

    :try_start_2
    iput-object v1, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v13, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    :goto_0
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p3

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_1
    move-object/from16 v1, p3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wake lock not active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, p1

    :try_start_3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v5, p4

    :try_start_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v4, p1

    move-object/from16 v1, p3

    :goto_2
    move/from16 v5, p4

    :goto_3
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 14

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0x4eb7

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v9

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v1

    array-length v11, v1

    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v11, :cond_3

    aget v13, v1, v12

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v2, v13}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v13}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v13, v9, v10}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x3e8

    move-object v2, p0

    move v3, v13

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->sleepDisplayGroupNoUpdateLocked(IJIII)Z

    move-result v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3e8

    invoke-direct {p0, v13, v9, v10, v2}, Lcom/android/server/power/PowerManagerService;->dreamDisplayGroupNoUpdateLocked(IJI)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    move-object v2, p0

    move v3, v13

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->sleepDisplayGroupNoUpdateLocked(IJIII)Z

    move-result v0

    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private userActivityFromNative(JIII)V
    .locals 7

    const/16 v6, 0x3e8

    move-object v0, p0

    move v1, p4

    move-wide v2, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    return-void
.end method

.method private userActivityInternal(IJIII)V
    .locals 13

    move-object v8, p0

    move v9, p1

    iget-object v10, v8, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    move-object v1, p0

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v10

    return-void

    :cond_1
    iget-object v1, v8, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    move-object v11, v1

    if-nez v11, :cond_2

    monitor-exit v10

    return-void

    :cond_2
    iget v1, v11, Landroid/view/DisplayInfo;->displayGroupId:I

    move v12, v1

    if-ne v12, v0, :cond_3

    monitor-exit v10

    return-void

    :cond_3
    move-object v1, p0

    move v2, v12

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IJIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_4
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userActivityNoUpdateLocked(IJIII)Z
    .locals 8

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/32 v2, 0x20000

    const-string v0, "userActivity"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v0, p2, v4

    if-lez v0, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p4, p6}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/power/AttentionDetector;->onUserActivity(JI)I

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    and-int/lit8 v4, p5, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v4, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeNoChangeLightsLocked(I)J

    move-result-wide v6

    cmp-long v4, p2, v6

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v4, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v6

    cmp-long v4, p2, v6

    if-lez v4, :cond_7

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setLastUserActivityTimeNoChangeLightsLocked(IJ)V

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne p4, v5, :cond_4

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    nop

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v5

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v4, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v6

    cmp-long v4, p2, v6

    if-lez v4, :cond_7

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setLastUserActivityTimeLocked(IJ)V

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne p4, v5, :cond_6

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    nop

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v5

    :cond_7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v1

    :cond_8
    :goto_0
    nop

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_9
    :goto_1
    return v1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 13

    const/4 v0, 0x0

    move-object v8, p0

    iget-object v1, v8, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getDisplayGroupIdsLocked()[I

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-ge v11, v10, :cond_1

    aget v12, v9, v11

    move-object v1, p0

    move v2, v12

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IJIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private wakeDisplayGroup(IJILjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->wakeDisplayGroupNoUpdateLocked(IJILjava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wakeDisplayGroupNoUpdateLocked(IJILjava/lang/String;ILjava/lang/String;I)Z
    .locals 18

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-wide/from16 v13, p2

    iget-wide v0, v11, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v13, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v0, :cond_3

    iget-boolean v0, v11, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v11, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, v12}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_2

    iget-boolean v2, v11, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v2, :cond_1

    iget v1, v11, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v11, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0

    :cond_1
    return v1

    :cond_2
    const-wide/32 v9, 0x20000

    const-string v1, "powerOnDisplay"

    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Powering on display group from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", details="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Screen turning on"

    invoke-static {v9, v10, v1, v12}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p6

    move/from16 v7, p4

    move/from16 v8, p8

    move-wide/from16 v16, v9

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    :try_start_1
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setLastPowerOnTimeLocked(IJ)V

    iget-object v1, v11, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, v12, v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setPoweringOnLocked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v9

    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_3
    :goto_1
    return v1
.end method

.method private wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method


# virtual methods
.method checkForLongWakeLocks()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    const-wide/32 v3, 0xea60

    sub-long v5, v1, v3

    const-wide v7, 0x7fffffffffffffffL

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_1

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_1

    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v12, v12, v5

    if-gez v12, :cond_0

    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    :cond_0
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    add-long/2addr v12, v3

    cmp-long v14, v12, v7

    if-gez v14, :cond_1

    move-wide v7, v12

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v7, v10

    if-eqz v10, :cond_3

    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-direct {p0, v7, v8}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_2

    :cond_3
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method finishUidChangesInternal()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBinderServiceInstance()Lcom/android/server/power/PowerManagerService$BinderService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object v0
.end method

.method getDesiredScreenPolicyLocked(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakeLockSummaryLocked(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_1

    return v3

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    if-eqz v5, :cond_2

    return v2

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    return v2

    :cond_3
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getUserActivitySummaryLocked(I)I

    move-result v2

    and-int/2addr v2, v3

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    return v2

    :cond_5
    :goto_0
    return v4

    :cond_6
    :goto_1
    return v2
.end method

.method getLastShutdownReasonInternal()I
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const-string v1, "sys.boot.reason"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "shutdown,thermal,battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "shutdown,userrequested"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_4
    const-string v1, "shutdown,battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_5
    const-string v1, "shutdown,thermal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    return v2

    :pswitch_0
    const/4 v1, 0x6

    return v1

    :pswitch_1
    return v3

    :pswitch_2
    return v4

    :pswitch_3
    return v5

    :pswitch_4
    return v6

    :pswitch_5
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e3d61bf -> :sswitch_5
        -0x418b4b49 -> :sswitch_4
        -0x37ba085b -> :sswitch_3
        -0x32cb60d3 -> :sswitch_2
        -0xa17f9aa -> :sswitch_1
        0x489a31a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getLocalServiceInstance()Lcom/android/server/power/PowerManagerService$LocalService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object v0
.end method

.method getWakefulnessLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    return v0
.end method

.method getWakefulnessLocked(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getWakefulnessLocked(I)I

    move-result v0

    return v0
.end method

.method handleSettingsChangedLocked()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method isDeviceIdleModeInternal()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public monitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x258

    if-ne p1, v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    const/16 v9, 0xa

    const/4 v10, 0x1

    const/16 v11, 0x3e8

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/power/PowerManagerService;->sleepDisplayGroupNoUpdateLocked(IJIII)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    const-string v1, "power"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    return-void
.end method

.method onUserActivity()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setLastUserActivityTimeLocked(IJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method readConfigurationLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const v1, 0x111011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const v1, 0x111015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const v1, 0x111001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const v1, 0x1110151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const v1, 0x10e0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const v1, 0x10e0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    const v1, 0x11100c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const v1, 0x11100bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const v1, 0x11100be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const v1, 0x11100bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const v1, 0x11100c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const v1, 0x10e005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const v1, 0x10e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const v1, 0x10e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const v1, 0x11100b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    const v1, 0x10e008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    const v1, 0x10e0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    const v1, 0x1130002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    const v1, 0x1110142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    return-void
.end method

.method setDeviceIdleModeInternal(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eqz v3, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    :goto_0
    return v4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    monitor-exit v0

    return v4

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .locals 10

    if-gez p1, :cond_0

    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1

    :try_start_0
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p2, v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v1, :cond_3

    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJ)V

    invoke-virtual {v2, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :goto_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setStayOnSettingInternal(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method setVrModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return-void
.end method

.method setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v9, p0

    move v10, p2

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    move v11, p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->setWakefulnessLocked(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getGlobalWakefulnessLocked()I

    move-result v1

    move-object v0, p0

    move-wide v2, p3

    move/from16 v4, p6

    move/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->setGlobalWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v10, v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IJIII)Z

    :cond_0
    return-void
.end method

.method startUidChangesInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    new-instance v4, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/power/PowerManagerService$Injector;->createDisplayPowerRequestMapper(Ljava/lang/Object;Landroid/hardware/display/DisplayManagerInternal;Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;)Lcom/android/server/power/DisplayGroupPowerStateMapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v3, "PowerManagerService.Broadcasts"

    invoke-virtual {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/power/PowerManagerService$Injector;->createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;)Lcom/android/server/power/Notifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v3, "PowerManagerService.WirelessChargerDetector"

    invoke-virtual {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$Injector;->createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v1}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "PowerManagerService"

    invoke-interface {v3, v2, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->systemReady()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/FaceDownDetector;->systemReady(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/ScreenUndimDetector;->systemReady(Landroid/content/Context;)V

    const-string v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "sleep_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "attentive_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "theater_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "double_tap_to_wake"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "device_demo_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "vrmanager"

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    const-string v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method uidActiveInternal(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    const/16 v2, 0x13

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidGoneInternal(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$UidState;

    const/16 v3, 0x14

    iput v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidIdleInternal(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget v1, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    return-void
.end method

.method updateUidProcStateInternal(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb

    if-gt v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_2

    :cond_2
    iget-boolean v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v6, :cond_4

    if-gt p2, v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eq v2, v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method wasDeviceIdleForInternal(J)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayGroupPowerStateMapper:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getLastUserActivityTimeLocked(I)J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
