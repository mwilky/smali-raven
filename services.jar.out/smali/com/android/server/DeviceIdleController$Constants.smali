.class public final Lcom/android/server/DeviceIdleController$Constants;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_FLEX_TIME_SHORT:J = 0xea60L

.field private static final DEFAULT_IDLE_AFTER_INACTIVE_TIMEOUT:J = 0x1b7740L

.field private static final DEFAULT_IDLE_AFTER_INACTIVE_TIMEOUT_SMALL_BATTERY:J = 0xdbba0L

.field private static final DEFAULT_IDLE_FACTOR:F = 2.0f

.field private static final DEFAULT_IDLE_PENDING_FACTOR:F = 2.0f

.field private static final DEFAULT_IDLE_PENDING_TIMEOUT:J = 0x493e0L

.field private static final DEFAULT_IDLE_TIMEOUT:J = 0x36ee80L

.field private static final DEFAULT_INACTIVE_TIMEOUT:J = 0x1b7740L

.field private static final DEFAULT_INACTIVE_TIMEOUT_SMALL_BATTERY:J = 0xdbba0L

.field private static final DEFAULT_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J = 0xea60L

.field private static final DEFAULT_LIGHT_IDLE_FACTOR:F = 2.0f

.field private static final DEFAULT_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J = 0x493e0L

.field private static final DEFAULT_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J = 0xea60L

.field private static final DEFAULT_LIGHT_IDLE_TIMEOUT:J = 0x493e0L

.field private static final DEFAULT_LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J = 0xea60L

.field private static final DEFAULT_LIGHT_MAX_IDLE_TIMEOUT:J = 0xdbba0L

.field private static final DEFAULT_LIGHT_MAX_IDLE_TIMEOUT_FLEX:J = 0xdbba0L

.field private static final DEFAULT_LIGHT_PRE_IDLE_TIMEOUT:J = 0x2bf20L

.field private static final DEFAULT_LOCATING_TIMEOUT:J = 0x7530L

.field private static final DEFAULT_LOCATION_ACCURACY:F = 20.0f

.field private static final DEFAULT_MAX_IDLE_PENDING_TIMEOUT:J = 0x927c0L

.field private static final DEFAULT_MAX_IDLE_TIMEOUT:J = 0x1499700L

.field private static final DEFAULT_MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J = 0x493e0L

.field private static final DEFAULT_MIN_DEEP_MAINTENANCE_TIME:J = 0x7530L

.field private static final DEFAULT_MIN_LIGHT_MAINTENANCE_TIME:J = 0x1388L

.field private static final DEFAULT_MIN_TIME_TO_ALARM:J = 0x1b7740L

.field private static final DEFAULT_MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J = 0xea60L

.field private static final DEFAULT_MOTION_INACTIVE_TIMEOUT:J = 0x927c0L

.field private static final DEFAULT_MOTION_INACTIVE_TIMEOUT_FLEX:J = 0xea60L

.field private static final DEFAULT_NOTIFICATION_ALLOWLIST_DURATION_MS:J = 0x7530L

.field private static final DEFAULT_PRE_IDLE_FACTOR_LONG:F = 1.67f

.field private static final DEFAULT_PRE_IDLE_FACTOR_SHORT:F = 0.33f

.field private static final DEFAULT_QUICK_DOZE_DELAY_TIMEOUT:J = 0xea60L

.field private static final DEFAULT_SENSING_TIMEOUT:J = 0x3a980L

.field private static final DEFAULT_SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J = 0x4e20L

.field private static final DEFAULT_USE_WINDOW_ALARMS:Z = true

.field private static final DEFAULT_WAIT_FOR_UNLOCK:Z = true

.field private static final KEY_FLEX_TIME_SHORT:Ljava/lang/String; = "flex_time_short"

.field private static final KEY_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to"

.field private static final KEY_IDLE_FACTOR:Ljava/lang/String; = "idle_factor"

.field private static final KEY_IDLE_PENDING_FACTOR:Ljava/lang/String; = "idle_pending_factor"

.field private static final KEY_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to"

.field private static final KEY_IDLE_TIMEOUT:Ljava/lang/String; = "idle_to"

.field private static final KEY_INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to"

.field private static final KEY_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "light_after_inactive_to"

.field private static final KEY_LIGHT_IDLE_FACTOR:Ljava/lang/String; = "light_idle_factor"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:Ljava/lang/String; = "light_idle_maintenance_max_budget"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:Ljava/lang/String; = "light_idle_maintenance_min_budget"

.field private static final KEY_LIGHT_IDLE_TIMEOUT:Ljava/lang/String; = "light_idle_to"

.field private static final KEY_LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:Ljava/lang/String; = "light_idle_to_initial_flex"

.field private static final KEY_LIGHT_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "light_max_idle_to"

.field private static final KEY_LIGHT_MAX_IDLE_TIMEOUT_FLEX:Ljava/lang/String; = "light_max_idle_to_flex"

.field private static final KEY_LIGHT_PRE_IDLE_TIMEOUT:Ljava/lang/String; = "light_pre_idle_to"

.field private static final KEY_LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to"

.field private static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field private static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field private static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field private static final KEY_MAX_TEMP_APP_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "max_temp_app_allowlist_duration_ms"

.field private static final KEY_MIN_DEEP_MAINTENANCE_TIME:Ljava/lang/String; = "min_deep_maintenance_time"

.field private static final KEY_MIN_LIGHT_MAINTENANCE_TIME:Ljava/lang/String; = "min_light_maintenance_time"

.field private static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field private static final KEY_MMS_TEMP_APP_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "mms_temp_app_allowlist_duration_ms"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT_FLEX:Ljava/lang/String; = "motion_inactive_to_flex"

.field private static final KEY_NOTIFICATION_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "notification_allowlist_duration_ms"

.field private static final KEY_PRE_IDLE_FACTOR_LONG:Ljava/lang/String; = "pre_idle_factor_long"

.field private static final KEY_PRE_IDLE_FACTOR_SHORT:Ljava/lang/String; = "pre_idle_factor_short"

.field private static final KEY_QUICK_DOZE_DELAY_TIMEOUT:Ljava/lang/String; = "quick_doze_delay_to"

.field private static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field private static final KEY_SMS_TEMP_APP_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "sms_temp_app_allowlist_duration_ms"

.field private static final KEY_USE_WINDOW_ALARMS:Ljava/lang/String; = "use_window_alarms"

.field private static final KEY_WAIT_FOR_UNLOCK:Ljava/lang/String; = "wait_for_unlock"


# instance fields
.field public FLEX_TIME_SHORT:J

.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LIGHT_MAX_IDLE_TIMEOUT_FLEX:J

.field public LIGHT_PRE_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public MOTION_INACTIVE_TIMEOUT_FLEX:J

.field public NOTIFICATION_ALLOWLIST_DURATION_MS:J

.field public PRE_IDLE_FACTOR_LONG:F

.field public PRE_IDLE_FACTOR_SHORT:F

.field public QUICK_DOZE_DELAY_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public USE_WINDOW_ALARMS:Z

.field public WAIT_FOR_UNLOCK:Z

.field private final mSmallBatteryDevice:Z

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 13

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    const-wide/32 v4, 0xdbba0

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT_FLEX:J

    const/high16 v6, 0x40000000    # 2.0f

    iput v6, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    const-wide/16 v7, 0x1388

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    const-wide/16 v7, 0x7530

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    const-wide/32 v9, 0x1b7740

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-wide/32 v11, 0x3a980

    iput-wide v11, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    const/high16 v11, 0x41a00000    # 20.0f

    iput v11, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    const-wide/32 v11, 0x927c0

    iput-wide v11, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v11, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iput v6, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    const-wide/32 v11, 0x36ee80

    iput-wide v11, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    const-wide/32 v11, 0x1499700

    iput-wide v11, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    iput v6, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    const v0, 0x3fd5c28f    # 1.67f

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_0

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    :cond_0
    nop

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "device_idle"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController$Constants;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flex_time_short"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_pre_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to_initial_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_min_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_max_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_light_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_deep_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sensing_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "locating_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "location_accuracy"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, "m"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "quick_doze_delay_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_time_to_alarm"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notification_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "wait_for_unlock"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pre_idle_factor_long"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pre_idle_factor_short"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "use_window_alarms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v6, "mms_temp_app_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x1c

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v6, "location_accuracy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v6, "max_idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x18

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "idle_pending_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x17

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v6, "quick_doze_delay_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x16

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "idle_factor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x19

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v6, "sensing_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "idle_after_inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v6, "light_idle_maintenance_min_budget"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v6, "flex_time_short"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v6, "light_max_idle_to_flex"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v6, "pre_idle_factor_long"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x20

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v6, "wait_for_unlock"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x1f

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v6, "max_temp_app_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x1b

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v6, "min_deep_maintenance_time"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v6, "light_after_inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v7

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v6, "locating_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v6, "motion_inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v6, "motion_inactive_to_flex"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x11

    goto/16 :goto_1

    :sswitch_14
    const-string v6, "inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v6, "light_idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v6, "light_idle_to_initial_flex"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v6, "min_time_to_alarm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x1a

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v6, "max_idle_pending_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x14

    goto/16 :goto_1

    :sswitch_19
    const-string v6, "idle_pending_factor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x15

    goto :goto_1

    :sswitch_1a
    const-string/jumbo v6, "sms_temp_app_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x1d

    goto :goto_1

    :sswitch_1b
    const-string/jumbo v6, "min_light_maintenance_time"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xa

    goto :goto_1

    :sswitch_1c
    const-string/jumbo v6, "pre_idle_factor_short"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x21

    goto :goto_1

    :sswitch_1d
    const-string/jumbo v6, "light_max_idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_1e
    const-string/jumbo v6, "use_window_alarms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x22

    goto :goto_1

    :sswitch_1f
    const-string/jumbo v6, "light_idle_factor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_20
    const-string/jumbo v6, "light_pre_idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_21
    const-string/jumbo v6, "light_idle_maintenance_max_budget"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_22
    const-string/jumbo v6, "notification_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x1e

    :goto_1
    const-wide/32 v10, 0x1b7740

    const-wide/16 v12, 0x7530

    const/high16 v6, 0x40000000    # 2.0f

    const-wide/32 v14, 0x493e0

    const-wide/32 v8, 0xea60

    packed-switch v5, :pswitch_data_0

    const-string v5, "DeviceIdleController"

    goto/16 :goto_4

    :pswitch_0
    const-string/jumbo v5, "use_window_alarms"

    invoke-virtual {v2, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    goto/16 :goto_5

    :pswitch_1
    const-string/jumbo v5, "pre_idle_factor_short"

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, v1, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    goto/16 :goto_5

    :pswitch_2
    const-string/jumbo v5, "pre_idle_factor_long"

    const v6, 0x3fd5c28f    # 1.67f

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, v1, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    goto/16 :goto_5

    :pswitch_3
    const-string/jumbo v5, "wait_for_unlock"

    invoke-virtual {v2, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    goto/16 :goto_5

    :pswitch_4
    const-string/jumbo v5, "notification_allowlist_duration_ms"

    invoke-virtual {v2, v5, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_5

    :pswitch_5
    const-string/jumbo v5, "sms_temp_app_allowlist_duration_ms"

    const-wide/16 v6, 0x4e20

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_5

    :pswitch_6
    const-string/jumbo v5, "mms_temp_app_allowlist_duration_ms"

    invoke-virtual {v2, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_5

    :pswitch_7
    const-string/jumbo v5, "max_temp_app_allowlist_duration_ms"

    invoke-virtual {v2, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_5

    :pswitch_8
    const-string/jumbo v5, "min_time_to_alarm"

    invoke-virtual {v2, v5, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    goto/16 :goto_5

    :pswitch_9
    const-string v5, "idle_factor"

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    goto/16 :goto_5

    :pswitch_a
    const-string/jumbo v5, "max_idle_to"

    const-wide/32 v6, 0x1499700

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_b
    const-string v5, "idle_to"

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_c
    const-string/jumbo v5, "quick_doze_delay_to"

    invoke-virtual {v2, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_d
    const-string v5, "idle_pending_factor"

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    goto/16 :goto_5

    :pswitch_e
    const-string/jumbo v5, "max_idle_pending_to"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_f
    const-string v5, "idle_pending_to"

    invoke-virtual {v2, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_10
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v5, :cond_2

    const-wide/32 v10, 0xdbba0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-wide v5, v10

    const-string v7, "idle_after_inactive_to"

    invoke-virtual {v2, v7, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_11
    const-string/jumbo v5, "motion_inactive_to_flex"

    invoke-virtual {v2, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    goto/16 :goto_5

    :pswitch_12
    const-string/jumbo v5, "motion_inactive_to"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_13
    const-string/jumbo v5, "location_accuracy"

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    goto/16 :goto_5

    :pswitch_14
    const-string/jumbo v5, "locating_to"

    invoke-virtual {v2, v5, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_15
    const-string/jumbo v5, "sensing_to"

    const-wide/32 v6, 0x3a980

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_16
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v5, :cond_3

    const-wide/32 v10, 0xdbba0

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move-wide v5, v10

    const-string v7, "inactive_to"

    invoke-virtual {v2, v7, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    goto/16 :goto_5

    :pswitch_17
    const-string/jumbo v5, "min_deep_maintenance_time"

    invoke-virtual {v2, v5, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    goto/16 :goto_5

    :pswitch_18
    const-string/jumbo v5, "min_light_maintenance_time"

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    goto/16 :goto_5

    :pswitch_19
    const-string/jumbo v5, "light_idle_maintenance_max_budget"

    invoke-virtual {v2, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    goto/16 :goto_5

    :pswitch_1a
    const-string/jumbo v5, "light_idle_maintenance_min_budget"

    invoke-virtual {v2, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    goto :goto_5

    :pswitch_1b
    const-string/jumbo v5, "light_max_idle_to"

    const-wide/32 v6, 0xdbba0

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    goto :goto_5

    :pswitch_1c
    const/high16 v5, 0x3f800000    # 1.0f

    const-string/jumbo v7, "light_idle_factor"

    invoke-virtual {v2, v7, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    goto :goto_5

    :pswitch_1d
    const-string/jumbo v5, "light_max_idle_to_flex"

    const-wide/32 v6, 0xdbba0

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT_FLEX:J

    goto :goto_5

    :pswitch_1e
    const-string/jumbo v5, "light_idle_to_initial_flex"

    invoke-virtual {v2, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    goto :goto_5

    :pswitch_1f
    const-string/jumbo v5, "light_idle_to"

    invoke-virtual {v2, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    goto :goto_5

    :pswitch_20
    const-string/jumbo v5, "light_pre_idle_to"

    const-wide/32 v6, 0x2bf20

    invoke-virtual {v2, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    goto :goto_5

    :pswitch_21
    const-string/jumbo v5, "light_after_inactive_to"

    invoke-virtual {v2, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    goto :goto_5

    :pswitch_22
    const-string v5, "flex_time_short"

    invoke-virtual {v2, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    goto :goto_5

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown configuration key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto/16 :goto_0

    :cond_4
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x6a2938fb -> :sswitch_22
        -0x41b123b2 -> :sswitch_21
        -0x404f247f -> :sswitch_20
        -0x3f9e5d8f -> :sswitch_1f
        -0x3ad07d47 -> :sswitch_1e
        -0x36c982be -> :sswitch_1d
        -0x21acba85 -> :sswitch_1c
        -0x20a67af1 -> :sswitch_1b
        -0x1d57514a -> :sswitch_1a
        -0x12f62f3e -> :sswitch_19
        -0xa52b56d -> :sswitch_18
        -0x4c6666e -> :sswitch_17
        0x808c476 -> :sswitch_16
        0xbc3989d -> :sswitch_15
        0x158c3acf -> :sswitch_14
        0x16112cd2 -> :sswitch_13
        0x18cb77c6 -> :sswitch_12
        0x20da752b -> :sswitch_11
        0x33a0fa03 -> :sswitch_10
        0x3520e53f -> :sswitch_f
        0x36be854b -> :sswitch_e
        0x3bafc484 -> :sswitch_d
        0x4939699d -> :sswitch_c
        0x4c5a34d6 -> :sswitch_b
        0x5082fc90 -> :sswitch_a
        0x51a693a0 -> :sswitch_9
        0x52751141 -> :sswitch_8
        0x5b96ba4f -> :sswitch_7
        0x5c37001a -> :sswitch_6
        0x5d307d0e -> :sswitch_5
        0x633432c6 -> :sswitch_4
        0x6419976e -> :sswitch_3
        0x650bdaeb -> :sswitch_2
        0x73162643 -> :sswitch_1
        0x73ea15fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
