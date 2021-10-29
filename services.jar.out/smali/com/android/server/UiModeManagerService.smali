.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$Injector;,
        Lcom/android/server/UiModeManagerService$LocalService;,
        Lcom/android/server/UiModeManagerService$Shell;,
        Lcom/android/server/UiModeManagerService$ProjectionHolder;
    }
.end annotation


# static fields
.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z = false

.field private static final SYSTEM_PROPERTY_DEVICE_THEME:Ljava/lang/String; = "persist.sys.theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

.field private final DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

.field private mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCar:Z

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCarModePackagePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mCurrentUser:I

.field private mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

.field private mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

.field private final mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mDarkThemeObserver:Landroid/database/ContentObserver;

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mEnableCarDockLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private final mInjector:Lcom/android/server/UiModeManagerService$Injector;

.field private mLastBroadcastState:I

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNightModeLocked:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

.field private final mOnShutdown:Landroid/content/BroadcastReceiver;

.field private final mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

.field private mOverrideNightModeOff:Z

.field private mOverrideNightModeOn:Z

.field private mOverrideNightModeUser:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private mProjectionHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/UiModeManagerService$ProjectionHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProjectionListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IOnProjectionStateChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/app/IUiModeManager$Stub;

.field private mSetUiMode:I

.field private final mSettingsRestored:Landroid/content/BroadcastReceiver;

.field private mSetupWizardComplete:Z

.field private final mSetupWizardObserver:Landroid/database/ContentObserver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUiModeLocked:Z

.field private mVrHeadset:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWaitForScreenOff:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z

.field private mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/UiModeManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/UiModeManagerService$Injector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/16 v2, 0x16

    invoke-static {v2, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    const/4 v3, 0x6

    invoke-static {v3, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    new-instance v0, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v0, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/UiModeManagerService$9;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/UiModeManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$10;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$11;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$12;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    iput-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iput-object p4, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/UiModeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/android/server/UiModeManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->onCustomTimeUpdated(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->assertLegit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->assertSingleProjectionType(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->enforceProjectionTypePermissions(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/UiModeManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->releaseProjectionUnchecked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$4900(Ljava/time/LocalTime;)J
    .locals 2

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->toMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(J)Ljava/time/LocalTime;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->fromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    nop

    const-string/jumbo v0, "statusbar"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x80000

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_3

    nop

    const-string/jumbo v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080803

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x106001c

    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10401d4

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10401d3

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v1, 0x0

    const/high16 v3, 0x2000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v7, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v7, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private applyConfigurationExternallyLocked()V
    .locals 3

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->clearSnapshotCache()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Activity does not have the "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private assertLegit(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->doesPackageHaveCallingUid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller claimed bogus packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static assertSingleProjectionType(I)V
    .locals 3

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify exactly one projection type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private cancelCustomAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method private computeCustomNightMode()Z
    .locals 3

    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    move-result v0

    return v0
.end method

.method private disableCarMode(IILjava/lang/String;)V
    .locals 9

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v4, :cond_5

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    nop

    :goto_3
    if-eqz v1, :cond_8

    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableCarMode: disabling, priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    new-instance v2, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private doesPackageHaveCallingUid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private enableCarMode(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCarMode: enabled at priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->notifyCarModeEnabled(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCarMode: car mode at priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " already enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private enforceProjectionTypePermissions(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    const-string/jumbo v2, "toggleProjection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static fromMilliseconds(J)Ljava/time/LocalTime;
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method private getComputedUiModeConfiguration(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr p1, v1

    if-eqz v0, :cond_1

    const/16 v0, -0x11

    goto :goto_1

    :cond_1
    const/16 v0, -0x21

    :goto_1
    and-int/2addr p1, v0

    return p1
.end method

.method private getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 3

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private initPowerSave()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private isCarModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDeskDockState(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private notifyCarModeDisabled(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.extra.PRIORITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private notifyCarModeEnabled(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.extra.PRIORITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private onCustomTimeUpdated(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    :goto_0
    return-void
.end method

.method private onProjectionStateChangedLocked(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    and-int v2, p1, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-direct {p0, v1, v3}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result v4

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    :try_start_0
    invoke-virtual {v2, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IOnProjectionStateChangedListener;

    invoke-interface {v7, v4, v3}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    sget-object v8, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v9, "Failed a call to onProjectionStateChanged()."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private persistComputedNightMode(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    const-string/jumbo v2, "ui_night_mode_last_computed"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private persistNightMode(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v5, "dark_theme_custom_start_time"

    invoke-static {v0, v5, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-string v3, "dark_theme_custom_end_time"

    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private persistNightModeOverrides(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    const-string/jumbo v2, "ui_night_mode_override_on"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    const-string/jumbo v2, "ui_night_mode_override_off"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private populateWithRelevantActivePackageNames(ILjava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    and-int v4, p1, v2

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->toPackageNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private registerScreenOffEventLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerTimeChangeEvent()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerVrStateListener()V
    .locals 5

    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private releaseProjectionUnchecked(ILjava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->access$4000(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->access$4700(Lcom/android/server/UiModeManagerService$ProjectionHolder;)V

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Projection type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " released by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tried to release projection type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but was not set by that package."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetNightModeOverrideLocked()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    const/4 v0, 0x1

    return v0
.end method

.method private scheduleNextCustomTimeListener()V
    .locals 13

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v2, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v2, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    :goto_0
    nop

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x1

    sget-object v8, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v10, 0x0

    move-wide v6, v11

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "Could not start dock app: "

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    const/16 v16, -0x2

    move-object v8, v15

    move-object/from16 v17, v15

    move-object v15, v0

    :try_start_1
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    move v3, v2

    move-object/from16 v6, v17

    goto :goto_0

    :cond_0
    const/16 v4, -0x5b

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v6, v17

    :try_start_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", startActivityWithConfig result "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v6, v17

    :goto_0
    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v6, v17

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v15

    :goto_1
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    move-object v6, v15

    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    if-eqz p1, :cond_4

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method private sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setupWizardCompleteForCurrentUser()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method private shouldApplyAutomaticChangesImmediately()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

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

.method private static toMilliSeconds(Ljava/time/LocalTime;)J
    .locals 4

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static toPackageNameList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/UiModeManagerService$ProjectionHolder;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->access$4000(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private unregisterScreenOffEventLocked()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private unregisterTimeChangeEvent()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v1, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    const-string v0, "android.intent.category.CAR_DOCK"

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    const-string v0, "android.intent.category.HOME"

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    return-void
.end method

.method private updateComputedNightModeLocked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private updateConfigurationLocked()V
    .locals 5

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x7

    :cond_5
    :goto_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_8

    :cond_6
    if-ne v1, v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    :cond_8
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v2

    if-nez v2, :cond_9

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v3

    :goto_2
    move v1, v3

    :cond_a
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v2}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    :cond_c
    :goto_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerTimeChangeEvent()V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    goto :goto_4

    :cond_d
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterTimeChangeEvent()V

    :goto_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-nez v1, :cond_e

    and-int/lit8 v0, v0, -0x11

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->getComputedUiModeConfiguration(I)I

    move-result v0

    :goto_5
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_10

    :cond_f
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    :cond_10
    return-void
.end method

.method private updateCustomTimeLocked()V
    .locals 2

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    return-void
.end method

.method private updateDockState(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, ""

    invoke-virtual {p0, v1, v3, v3, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

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

.method private updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const v4, 0x10e003d

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const-string/jumbo v5, "ui_night_mode"

    invoke-static {v2, v5, v4, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "ui_night_mode_override_on"

    invoke-static {v2, v4, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "ui_night_mode_override_off"

    invoke-static {v2, v4, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-string v8, "dark_theme_custom_start_time"

    invoke-static {v2, v8, v4, v5, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    div-long/2addr v4, v6

    const-string v8, "dark_theme_custom_end_time"

    invoke-static {v2, v8, v4, v5, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "ui_night_mode_last_computed"

    invoke-static {v2, v4, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    :cond_4
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v0, v2, :cond_5

    move v1, v3

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v1
.end method

.method private updateSystemProperties()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.theme"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private verifySetupWizardCompleted()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    :goto_0
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mDockState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mLastBroadcastState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "  mNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->access$4800(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mOverrideOn/Off="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mNightModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mCarModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " (carModeApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " waitScreenOff="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mComputedNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " customStart="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " customEnd"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " mCarModeEnableFlags="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mEnableCarDockLaunch="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mUiModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_1

    const-string v1, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

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

.method protected getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getService()Landroid/app/IUiModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method public synthetic lambda$initPowerSave$2$UiModeManagerService(Landroid/os/PowerSaveState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

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

.method public synthetic lambda$new$0$UiModeManagerService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onStart$1$UiModeManagerService(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

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
    .locals 7

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-class v3, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightManager;

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    :cond_0
    const-class v4, Landroid/os/PowerManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManagerInternal;

    iput-object v4, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->initPowerSave()V

    iget v4, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "ui_night_mode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.os.action.SETTING_RESTORED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const v2, 0x10e0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    const v2, 0x10e002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    const v2, 0x10e004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    const v2, 0x11100ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    const v2, 0x1110102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    const v2, 0x1110101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    new-instance v3, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".onStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    const-string/jumbo v4, "uimode"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v3, Lcom/android/server/UiModeManagerInternal;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

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

.method setCarModeLocked(ZIILjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/android/server/UiModeManagerService;->enableCarMode(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/UiModeManagerService;->disableCarMode(IILjava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->isCarModeEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    :cond_1
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    return-void
.end method

.method updateLocked(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v5, v6, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    if-eqz v4, :cond_2

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    :cond_2
    iput v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_4

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    :cond_4
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move-object v3, v4

    :cond_6
    :goto_1
    const/4 v5, 0x1

    if-eqz v3, :cond_7

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "enableFlags"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "disableFlags"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    iput-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v9, :cond_8

    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v9, :cond_a

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a

    const-string v8, "android.intent.category.CAR_DOCK"

    goto :goto_2

    :cond_8
    iget v9, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v9}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v9

    if-eqz v9, :cond_9

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a

    const-string v8, "android.intent.category.DESK_DOCK"

    goto :goto_2

    :cond_9
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_a

    const-string v8, "android.intent.category.HOME"

    :cond_a
    :goto_2
    invoke-direct {v0, v8}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    :goto_3
    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v8, :cond_d

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v8, :cond_b

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v8, :cond_b

    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_c

    :cond_b
    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v8, v6, :cond_d

    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v6, :cond_d

    :cond_c
    move v7, v5

    :cond_d
    move v5, v7

    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eq v5, v6, :cond_f

    if-eqz v5, :cond_e

    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_4

    :cond_e
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    :goto_4
    return-void
.end method
