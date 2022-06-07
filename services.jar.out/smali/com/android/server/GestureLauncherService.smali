.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;,
        Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    }
.end annotation


# static fields
.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final CAMERA_POWER_TAP_COUNT_THRESHOLD:I = 0x2

.field private static final DBG:Z = false

.field private static final DBG_CAMERA_LIFT:Z = false

.field private static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_DEFAULT:I = 0xbb8

.field static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_MAX:I = 0x1388

.field private static final EMERGENCY_GESTURE_POWER_TAP_COUNT_THRESHOLD:I = 0x5

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchRegistered:Z

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mCameraLiftRegistered:Z

.field private final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field private mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mEmergencyGestureEnabled:Z

.field private mEmergencyGesturePowerButtonCooldownPeriodMs:I

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mLastEmergencyGestureTriggered:J

.field private mLastPowerDown:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPowerButtonConsecutiveTaps:I

.field private mPowerButtonSlowConsecutiveTaps:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    new-instance v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p3, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/UiEventLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/GestureLauncherService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/GestureLauncherService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/GestureLauncherService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/GestureLauncherService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/GestureLauncherService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/GestureLauncherService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/GestureLauncherService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/GestureLauncherService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/GestureLauncherService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/GestureLauncherService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_power_button_cooldown_period_ms"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x1110044

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .locals 4

    const v0, 0x10e0028

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "gesture.disable_camera_launch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_gesture_disabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .locals 2

    const v0, 0x10e0029

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_lift_trigger_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11100c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "emergency_gesture_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result v0

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

.method private isUserSetupComplete()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const v1, 0x10e0028

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    const v3, 0x10401fd

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    return-void
.end method

.method private registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const v1, 0x10e0029

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    const v3, 0x10401fe

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v4}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_lift_trigger_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_power_button_cooldown_period_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private unregisterCameraLiftTrigger()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    :cond_0
    return-void
.end method

.method private updateCameraRegistered()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    :goto_1
    return-void
.end method


# virtual methods
.method handleCameraGesture(ZI)Z
    .locals 6

    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleCameraGesture"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method handleEmergencyGesture()Z
    .locals 5

    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleEmergencyGesture"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_0
    :try_start_1
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onEmergencyActionLaunchGestureDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const-string v4, "GestureLauncherService"

    const-string v5, "Suppressing power button: within %dms cooldown period after Emergency Gesture. Begin=%dms, end=%dms."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-wide v7, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    iget-wide v7, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p3, Landroid/util/MutableBoolean;->value:Z

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p3, Landroid/util/MutableBoolean;->value:Z

    return v2

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v6, v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    const-wide/16 v8, 0x1f4

    cmp-long v8, v6, v8

    const-wide/16 v9, 0x12c

    if-ltz v8, :cond_2

    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_0

    :cond_2
    cmp-long v8, v6, v9

    if-ltz v8, :cond_3

    iput v3, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    :goto_0
    iget-boolean v8, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-le v8, v3, :cond_4

    move v5, p2

    :cond_4
    const/4 v11, 0x5

    if-ne v8, v11, :cond_5

    const/4 v4, 0x1

    :cond_5
    iget-boolean v8, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    if-eqz v8, :cond_6

    cmp-long v8, v6, v9

    if-gez v8, :cond_6

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-ne v8, v1, :cond_6

    const/4 v0, 0x1

    move v1, p2

    move v5, v1

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-gt v1, v3, :cond_7

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    if-le v1, v3, :cond_8

    :cond_7
    const-string v1, "GestureLauncherService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " consecutive power button taps detected, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " consecutive slow power button taps detected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v0, :cond_9

    const-string v1, "GestureLauncherService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v8, 0xff

    long-to-int v9, v6

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v8, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v1, v8}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_a

    const-string v1, "GestureLauncherService"

    const-string v8, "Emergency gesture detected, launching."

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->handleEmergencyGesture()Z

    move-result v4

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v8, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v1, v8}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    if-eqz v4, :cond_a

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v8, "power_consecutive_short_tap_count"

    iget v9, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v8, "power_double_tap_interval"

    long-to-int v9, v6

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    if-nez v0, :cond_c

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    :goto_2
    move v1, v3

    :goto_3
    iput-boolean v1, p3, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_d

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_d

    move v2, v3

    :cond_d
    return v2

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 5

    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "GestureLauncherService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method updateCameraDoubleTapPowerEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateEmergencyGestureEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateEmergencyGesturePowerButtonCooldownPeriodMs()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I

    move-result v0

    monitor-enter p0

    :try_start_0
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
