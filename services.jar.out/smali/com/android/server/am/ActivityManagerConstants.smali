.class final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "ActivityManagerConstants.java"


# static fields
.field private static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field private static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F = 0.0f

.field public static BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I = 0x0

.field public static BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z = false

.field public static BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F = 0.0f

.field private static final DEFAULT_BACKGROUND_SETTLE_TIME:J = 0xea60L

.field private static final DEFAULT_BG_START_TIMEOUT:J = 0x3a98L

.field private static final DEFAULT_BOOT_TIME_TEMP_ALLOWLIST_DURATION:I = 0x4e20

.field private static final DEFAULT_BOUND_SERVICE_CRASH_MAX_RETRY:I = 0x10

.field private static final DEFAULT_BOUND_SERVICE_CRASH_RESTART_DURATION:J = 0x1b7740L

.field private static final DEFAULT_CONTENT_PROVIDER_RETAIN_TIME:J = 0x4e20L

.field private static final DEFAULT_FGSERVICE_MIN_REPORT_TIME:J = 0xbb8L

.field private static final DEFAULT_FGSERVICE_MIN_SHOWN_TIME:J = 0x7d0L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_AFTER_TIME:J = 0x1388L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_BEFORE_TIME:J = 0x3e8L

.field private static final DEFAULT_FGS_ALLOW_OPT_OUT:Z = false

.field private static final DEFAULT_FGS_ATOM_SAMPLE_RATE:F = 1.0f

.field private static final DEFAULT_FGS_START_ALLOWED_LOG_SAMPLE_RATE:F = 0.25f

.field private static final DEFAULT_FGS_START_DENIED_LOG_SAMPLE_RATE:F = 1.0f

.field private static final DEFAULT_FGS_START_FOREGROUND_TIMEOUT_MS:I = 0x2710

.field private static final DEFAULT_FG_TO_BG_FGS_GRACE_DURATION:J = 0x1388L

.field private static final DEFAULT_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z = true

.field private static final DEFAULT_FULL_PSS_LOWERED_INTERVAL:J = 0x493e0L

.field private static final DEFAULT_FULL_PSS_MIN_INTERVAL:J = 0x124f80L

.field private static final DEFAULT_GC_MIN_INTERVAL:J = 0xea60L

.field private static final DEFAULT_GC_TIMEOUT:J = 0x1388L

.field private static final DEFAULT_MAX_CACHED_PROCESSES:I = 0x20

.field private static final DEFAULT_MAX_PHANTOM_PROCESSES:I = 0x20

.field private static final DEFAULT_MAX_SERVICE_INACTIVITY:J = 0x1b7740L

.field private static final DEFAULT_MEMORY_INFO_THROTTLE_TIME:J = 0x493e0L

.field private static final DEFAULT_MIN_ASSOC_LOG_DURATION:J = 0x493e0L

.field private static final DEFAULT_MIN_CRASH_INTERVAL:I = 0x1d4c0

.field private static final DEFAULT_OOMADJ_UPDATE_POLICY:I = 0x1

.field private static final DEFAULT_PENDINGINTENT_WARNING_THRESHOLD:I = 0x7d0

.field private static final DEFAULT_POWER_CHECK_INTERVAL:J = 0x493e0L

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_1:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_2:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_3:I = 0xa

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_4:I = 0x2

.field private static final DEFAULT_PROCESS_CRASH_COUNT_LIMIT:I = 0xc

.field private static final DEFAULT_PROCESS_CRASH_COUNT_RESET_INTERVAL:I = 0x2932e00

.field private static final DEFAULT_PROCESS_START_ASYNC:Z = true

.field private static final DEFAULT_PUSH_MESSAGING_OVER_QUOTA_BEHAVIOR:I = 0x1

.field private static final DEFAULT_SERVICE_BG_ACTIVITY_START_TIMEOUT:J = 0x2710L

.field private static final DEFAULT_SERVICE_MIN_RESTART_TIME_BETWEEN:J = 0x2710L

.field private static final DEFAULT_SERVICE_RESET_RUN_DURATION:J = 0xea60L

.field private static final DEFAULT_SERVICE_RESTART_DURATION:J = 0x3e8L

.field private static final DEFAULT_SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field private static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME_POST_S:J = 0xea60L

.field private static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME_PRE_S:J = 0x1b7740L

.field private static final DEFAULT_TOP_TO_FGS_GRACE_DURATION:J = 0x3a98L

.field private static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL_POST_S:J = 0x927c0L

.field private static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J = 0x6ddd00L

.field private static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field private static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field private static final KEY_BACKGROUND_SETTLE_TIME:Ljava/lang/String; = "background_settle_time"

.field static final KEY_BG_START_TIMEOUT:Ljava/lang/String; = "service_bg_start_timeout"

.field private static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_batchsize"

.field private static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_enabled"

.field private static final KEY_BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:Ljava/lang/String; = "binder_heavy_hitter_auto_sampler_threshold"

.field private static final KEY_BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:Ljava/lang/String; = "binder_heavy_hitter_watcher_batchsize"

.field private static final KEY_BINDER_HEAVY_HITTER_WATCHER_ENABLED:Ljava/lang/String; = "binder_heavy_hitter_watcher_enabled"

.field private static final KEY_BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:Ljava/lang/String; = "binder_heavy_hitter_watcher_threshold"

.field static final KEY_BOOT_TIME_TEMP_ALLOWLIST_DURATION:Ljava/lang/String; = "boot_time_temp_allowlist_duration"

.field static final KEY_BOUND_SERVICE_CRASH_MAX_RETRY:Ljava/lang/String; = "service_crash_max_retry"

.field static final KEY_BOUND_SERVICE_CRASH_RESTART_DURATION:Ljava/lang/String; = "service_crash_restart_duration"

.field private static final KEY_CONTENT_PROVIDER_RETAIN_TIME:Ljava/lang/String; = "content_provider_retain_time"

.field private static final KEY_DEFAULT_BACKGROUND_ACTIVITY_STARTS_ENABLED:Ljava/lang/String; = "default_background_activity_starts_enabled"

.field private static final KEY_DEFAULT_BACKGROUND_FGS_STARTS_RESTRICTION_ENABLED:Ljava/lang/String; = "default_background_fgs_starts_restriction_enabled"

.field private static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_CHECK_CALLER_TARGET_SDK:Ljava/lang/String; = "default_fgs_starts_restriction_check_caller_target_sdk"

.field private static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_ENABLED:Ljava/lang/String; = "default_fgs_starts_restriction_enabled"

.field private static final KEY_DEFAULT_FGS_STARTS_RESTRICTION_NOTIFICATION_ENABLED:Ljava/lang/String; = "default_fgs_starts_restriction_notification_enabled"

.field private static final KEY_DEFERRED_FGS_NOTIFICATIONS_API_GATED:Ljava/lang/String; = "deferred_fgs_notifications_api_gated"

.field private static final KEY_DEFERRED_FGS_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "deferred_fgs_notifications_enabled"

.field private static final KEY_DEFERRED_FGS_NOTIFICATION_EXCLUSION_TIME:Ljava/lang/String; = "deferred_fgs_notification_exclusion_time"

.field private static final KEY_DEFERRED_FGS_NOTIFICATION_INTERVAL:Ljava/lang/String; = "deferred_fgs_notification_interval"

.field private static final KEY_FGSERVICE_MIN_REPORT_TIME:Ljava/lang/String; = "fgservice_min_report_time"

.field private static final KEY_FGSERVICE_MIN_SHOWN_TIME:Ljava/lang/String; = "fgservice_min_shown_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_AFTER_TIME:Ljava/lang/String; = "fgservice_screen_on_after_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME:Ljava/lang/String; = "fgservice_screen_on_before_time"

.field static final KEY_FGS_ALLOW_OPT_OUT:Ljava/lang/String; = "fgs_allow_opt_out"

.field static final KEY_FGS_ATOM_SAMPLE_RATE:Ljava/lang/String; = "fgs_atom_sample_rate"

.field static final KEY_FGS_START_ALLOWED_LOG_SAMPLE_RATE:Ljava/lang/String; = "fgs_start_allowed_log_sample_rate"

.field static final KEY_FGS_START_DENIED_LOG_SAMPLE_RATE:Ljava/lang/String; = "fgs_start_denied_log_sample_rate"

.field static final KEY_FGS_START_FOREGROUND_TIMEOUT:Ljava/lang/String; = "fgs_start_foreground_timeout"

.field static final KEY_FG_TO_BG_FGS_GRACE_DURATION:Ljava/lang/String; = "fg_to_bg_fgs_grace_duration"

.field private static final KEY_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Ljava/lang/String; = "force_bg_check_on_restricted"

.field private static final KEY_FULL_PSS_LOWERED_INTERVAL:Ljava/lang/String; = "full_pss_lowered_interval"

.field private static final KEY_FULL_PSS_MIN_INTERVAL:Ljava/lang/String; = "full_pss_min_interval"

.field private static final KEY_GC_MIN_INTERVAL:Ljava/lang/String; = "gc_min_interval"

.field private static final KEY_GC_TIMEOUT:Ljava/lang/String; = "gc_timeout"

.field private static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Ljava/lang/String; = "imperceptible_kill_exempt_packages"

.field private static final KEY_IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Ljava/lang/String; = "imperceptible_kill_exempt_proc_states"

.field private static final KEY_MAX_CACHED_PROCESSES:Ljava/lang/String; = "max_cached_processes"

.field private static final KEY_MAX_PHANTOM_PROCESSES:Ljava/lang/String; = "max_phantom_processes"

.field static final KEY_MAX_SERVICE_INACTIVITY:Ljava/lang/String; = "service_max_inactivity"

.field static final KEY_MEMORY_INFO_THROTTLE_TIME:Ljava/lang/String; = "memory_info_throttle_time"

.field private static final KEY_MIN_ASSOC_LOG_DURATION:Ljava/lang/String; = "min_assoc_log_duration"

.field static final KEY_MIN_CRASH_INTERVAL:Ljava/lang/String; = "min_crash_interval"

.field private static final KEY_OOMADJ_UPDATE_POLICY:Ljava/lang/String; = "oomadj_update_policy"

.field static final KEY_PENDINGINTENT_WARNING_THRESHOLD:Ljava/lang/String; = "pendingintent_warning_threshold"

.field private static final KEY_POWER_CHECK_INTERVAL:Ljava/lang/String; = "power_check_interval"

.field private static final KEY_POWER_CHECK_MAX_CPU_1:Ljava/lang/String; = "power_check_max_cpu_1"

.field private static final KEY_POWER_CHECK_MAX_CPU_2:Ljava/lang/String; = "power_check_max_cpu_2"

.field private static final KEY_POWER_CHECK_MAX_CPU_3:Ljava/lang/String; = "power_check_max_cpu_3"

.field private static final KEY_POWER_CHECK_MAX_CPU_4:Ljava/lang/String; = "power_check_max_cpu_4"

.field static final KEY_PROCESS_CRASH_COUNT_LIMIT:Ljava/lang/String; = "process_crash_count_limit"

.field static final KEY_PROCESS_CRASH_COUNT_RESET_INTERVAL:Ljava/lang/String; = "process_crash_count_reset_interval"

.field static final KEY_PROCESS_START_ASYNC:Ljava/lang/String; = "process_start_async"

.field private static final KEY_PUSH_MESSAGING_OVER_QUOTA_BEHAVIOR:Ljava/lang/String; = "push_messaging_over_quota_behavior"

.field static final KEY_SERVICE_BG_ACTIVITY_START_TIMEOUT:Ljava/lang/String; = "service_bg_activity_start_timeout"

.field static final KEY_SERVICE_MIN_RESTART_TIME_BETWEEN:Ljava/lang/String; = "service_min_restart_time_between"

.field static final KEY_SERVICE_RESET_RUN_DURATION:Ljava/lang/String; = "service_reset_run_duration"

.field static final KEY_SERVICE_RESTART_DURATION:Ljava/lang/String; = "service_restart_duration"

.field static final KEY_SERVICE_RESTART_DURATION_FACTOR:Ljava/lang/String; = "service_restart_duration_factor"

.field private static final KEY_SERVICE_USAGE_INTERACTION_TIME_POST_S:Ljava/lang/String; = "service_usage_interaction_time_post_s"

.field private static final KEY_SERVICE_USAGE_INTERACTION_TIME_PRE_S:Ljava/lang/String; = "service_usage_interaction_time"

.field static final KEY_TOP_TO_FGS_GRACE_DURATION:Ljava/lang/String; = "top_to_fgs_grace_duration"

.field private static final KEY_USAGE_STATS_INTERACTION_INTERVAL_POST_S:Ljava/lang/String; = "usage_stats_interaction_interval_post_s"

.field private static final KEY_USAGE_STATS_INTERACTION_INTERVAL_PRE_S:Ljava/lang/String; = "usage_stats_interaction_interval"

.field public static MIN_ASSOC_LOG_DURATION:J = 0x0L

.field private static final MIN_AUTOMATIC_HEAP_DUMP_PSS_THRESHOLD_BYTES:J = 0x19000L

.field public static MIN_CRASH_INTERVAL:I = 0x0

.field private static final OOMADJ_UPDATE_POLICY_QUICK:I = 0x1

.field private static final OOMADJ_UPDATE_POLICY_SLOW:I = 0x0

.field static PROCESS_CRASH_COUNT_LIMIT:I = 0x0

.field static PROCESS_CRASH_COUNT_RESET_INTERVAL:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "ActivityManagerConstants"


# instance fields
.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FLAG_PROCESS_START_ASYNC:Z

.field FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field FULL_PSS_LOWERED_INTERVAL:J

.field FULL_PSS_MIN_INTERVAL:J

.field GC_MIN_INTERVAL:J

.field GC_TIMEOUT:J

.field public IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final KEEP_WARMING_SERVICES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public MAX_CACHED_PROCESSES:I

.field public MAX_PHANTOM_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field POWER_CHECK_INTERVAL:J

.field POWER_CHECK_MAX_CPU_1:I

.field POWER_CHECK_MAX_CPU_2:I

.field POWER_CHECK_MAX_CPU_3:I

.field POWER_CHECK_MAX_CPU_4:I

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field SERVICE_USAGE_INTERACTION_TIME_POST_S:J

.field SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

.field public TOP_TO_FGS_GRACE_DURATION:J

.field USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

.field USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

.field volatile mBootTimeTempAllowlistDuration:J

.field private final mCustomizedMaxCachedProcesses:I

.field private final mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

.field private final mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

.field private final mDefaultBinderHeavyHitterAutoSamplerThreshold:F

.field private final mDefaultBinderHeavyHitterWatcherBatchSize:I

.field private final mDefaultBinderHeavyHitterWatcherEnabled:Z

.field private final mDefaultBinderHeavyHitterWatcherThreshold:F

.field private mDefaultImperceptibleKillExemptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field volatile mFgToBgFgsGraceDuration:J

.field volatile mFgsAllowOptOut:Z

.field volatile mFgsAtomSampleRate:F

.field volatile mFgsNotificationDeferralExclusionTime:J

.field volatile mFgsNotificationDeferralInterval:J

.field volatile mFgsStartAllowedLogSampleRate:F

.field volatile mFgsStartDeniedLogSampleRate:F

.field volatile mFgsStartForegroundTimeoutMs:J

.field volatile mFgsStartRestrictionCheckCallerTargetSdk:Z

.field volatile mFgsStartRestrictionNotificationEnabled:Z

.field volatile mFlagActivityStartsLoggingEnabled:Z

.field volatile mFlagBackgroundActivityStartsEnabled:Z

.field volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field volatile mFlagFgsNotificationDeferralApiGated:Z

.field volatile mFlagFgsNotificationDeferralEnabled:Z

.field volatile mFlagFgsStartRestrictionEnabled:Z

.field volatile mFlagForegroundServiceStartsLoggingEnabled:Z

.field private final mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mOverrideMaxCachedProcesses:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field volatile mPushMessagingOverQuotaBehavior:I

.field private mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSystemServerAutomaticHeapDumpEnabled:Z

.field private final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field private mSystemServerAutomaticHeapDumpPssThresholdBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x1d4c0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    const/16 v0, 0xc

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    const-string v0, "activity_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const-string v0, "activity_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    nop

    const-string v0, "foreground_service_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    nop

    const-string v0, "enable_automatic_system_server_heap_dumps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x20

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    const-wide/32 v3, 0xea60

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    const-wide/16 v5, 0x7d0

    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    const-wide/16 v5, 0xbb8

    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    const-wide/16 v5, 0x3e8

    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    const-wide/16 v7, 0x1388

    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    const-wide/16 v9, 0x4e20

    iput-wide v9, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    const-wide/32 v12, 0x124f80

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    const-wide/32 v12, 0x493e0

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    const/16 v14, 0x19

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    const/16 v14, 0xa

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    const/4 v14, 0x2

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    const-wide/32 v14, 0x1b7740

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    const-wide/32 v7, 0x6ddd00

    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    const-wide/32 v7, 0x927c0

    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    const/4 v3, 0x4

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    const-wide/16 v3, 0x2710

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    const-wide/16 v5, 0x3a98

    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    const-wide/16 v7, 0x10

    iput-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    iput-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    iput-boolean v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    const-wide/32 v6, 0x1d4c0

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    iput-wide v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    const-wide/16 v6, 0x1388

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    const/high16 v4, 0x3e800000    # 0.25f

    iput v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    iput-boolean v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    new-instance v3, Landroid/util/KeyValueListParser;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    iget v3, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    iget v3, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    const/16 v3, 0x7d0

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    new-instance v2, Lcom/android/server/am/ActivityManagerConstants$1;

    invoke-direct {v2, v0}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x11100a0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_0
    iput-boolean v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    const-wide/32 v4, 0x19000

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11100a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11100a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0037

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10500aa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    sput-boolean v4, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    sput v5, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    sput v6, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    sput-boolean v7, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    sput v8, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    sput v9, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundActivityStarts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updatePushMessagingOverQuotaBehavior()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateOomAdjUpdatePolicy()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateImperceptibleKillExemptions()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForceRestrictedBackgroundCheck()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMinAssocLogDuration()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBinderHeavyHitterWatcher()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxPhantomProcesses()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBootTimeTempAllowListDuration()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgToBgFgsGraceDuration()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartForegroundTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundFgsStartsRestriction()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAtomSamplePercent()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartAllowedLogSamplePercent()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartDeniedLogSamplePercent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsAllowOptOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestriction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsStartsRestrictionCheckCallerTargetSdk()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralEnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralApiGated()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralInterval()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateFgsNotificationDeferralExclusionTime()V

    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1

    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private loadDeviceConfigConstants()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "activity_manager"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method private updateActivityStartsLoggingEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return-void
.end method

.method private updateBackgroundActivityStarts()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "default_background_activity_starts_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return-void
.end method

.method private updateBackgroundFgsStartsRestriction()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "default_background_fgs_starts_restriction_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    return-void
.end method

.method private updateBinderHeavyHitterWatcher()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    const-string v1, "activity_manager"

    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->scheduleUpdateBinderHeavyHitterWatcherConfig()V

    return-void
.end method

.method private updateBootTimeTempAllowListDuration()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "boot_time_temp_allowlist_duration"

    const-wide/16 v2, 0x4e20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    return-void
.end method

.method private updateConstants()V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "activity_manager_constants"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "ActivityManagerConstants"

    const-string v5, "Bad activity manager config settings"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "background_settle_time"

    const-wide/32 v7, 0xea60

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_min_shown_time"

    const-wide/16 v9, 0x7d0

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_min_report_time"

    const-wide/16 v9, 0xbb8

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_screen_on_before_time"

    const-wide/16 v9, 0x3e8

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "fgservice_screen_on_after_time"

    const-wide/16 v11, 0x1388

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "content_provider_retain_time"

    const-wide/16 v13, 0x4e20

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "gc_timeout"

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "gc_min_interval"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "full_pss_min_interval"

    const-wide/32 v11, 0x124f80

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v6, "full_pss_lowered_interval"

    const-wide/32 v11, 0x493e0

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_interval"

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_1"

    const/16 v13, 0x19

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_2"

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_3"

    const/16 v13, 0xa

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "power_check_max_cpu_4"

    const/4 v13, 0x2

    invoke-virtual {v0, v6, v13}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_usage_interaction_time"

    const-wide/32 v13, 0x1b7740

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_usage_interaction_time_post_s"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "usage_stats_interaction_interval"

    const-wide/32 v11, 0x6ddd00

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "usage_stats_interaction_interval_post_s"

    const-wide/32 v11, 0x927c0

    invoke-virtual {v0, v6, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_restart_duration"

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_reset_run_duration"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_restart_duration_factor"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_min_restart_time_between"

    const-wide/16 v7, 0x2710

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_max_inactivity"

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_bg_start_timeout"

    const-wide/16 v9, 0x3a98

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_bg_activity_start_timeout"

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_crash_restart_duration"

    invoke-virtual {v0, v6, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "service_crash_max_retry"

    const/16 v7, 0x10

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "process_start_async"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "memory_info_throttle_time"

    const-wide/32 v7, 0x493e0

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "top_to_fgs_grace_duration"

    invoke-virtual {v0, v6, v9, v10}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "min_crash_interval"

    const v7, 0x1d4c0

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "pendingintent_warning_threshold"

    const/16 v7, 0x7d0

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "process_crash_count_reset_interval"

    const v7, 0x2932e00

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    sput-wide v6, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "process_crash_count_limit"

    const/16 v7, 0xc

    invoke-virtual {v0, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    iget-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x1b

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private updateEnableAutomaticSystemServerHeapDumps()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "ActivityManagerConstants"

    const-string/jumbo v1, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_automatic_system_server_heap_dumps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    move-wide v6, v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method private updateFgToBgFgsGraceDuration()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "fg_to_bg_fgs_grace_duration"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    return-void
.end method

.method private updateFgsAllowOptOut()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "fgs_allow_opt_out"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    return-void
.end method

.method private updateFgsAtomSamplePercent()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "fgs_atom_sample_rate"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    return-void
.end method

.method private updateFgsNotificationDeferralApiGated()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notifications_api_gated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    return-void
.end method

.method private updateFgsNotificationDeferralEnable()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    return-void
.end method

.method private updateFgsNotificationDeferralExclusionTime()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notification_exclusion_time"

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    return-void
.end method

.method private updateFgsNotificationDeferralInterval()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "deferred_fgs_notification_interval"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    return-void
.end method

.method private updateFgsStartAllowedLogSamplePercent()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "fgs_start_allowed_log_sample_rate"

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    return-void
.end method

.method private updateFgsStartDeniedLogSamplePercent()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "fgs_start_denied_log_sample_rate"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    return-void
.end method

.method private updateFgsStartForegroundTimeout()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "fgs_start_foreground_timeout"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    return-void
.end method

.method private updateFgsStartsRestriction()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    return-void
.end method

.method private updateFgsStartsRestrictionCheckCallerTargetSdk()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_check_caller_target_sdk"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    return-void
.end method

.method private updateFgsStartsRestrictionNotification()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "default_fgs_starts_restriction_notification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    return-void
.end method

.method private updateForceRestrictedBackgroundCheck()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "force_bg_check_on_restricted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    return-void
.end method

.method private updateForegroundServiceStartsLoggingEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "foreground_service_starts_logging_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagForegroundServiceStartsLoggingEnabled:Z

    return-void
.end method

.method private updateImperceptibleKillExemptions()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const-string v0, "activity_manager"

    const-string v1, "imperceptible_kill_exempt_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const-string v3, "imperceptible_kill_exempt_proc_states"

    invoke-static {v0, v3, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerConstants;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private updateMaxCachedProcesses()V
    .locals 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "max_cached_processes"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse flag for max_cached_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerConstants"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    :goto_1
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    return-void
.end method

.method private updateMaxPhantomProcesses()V
    .locals 4

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    const-string v1, "activity_manager"

    const-string/jumbo v2, "max_phantom_processes"

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateMinAssocLogDuration()V
    .locals 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "min_assoc_log_duration"

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-void
.end method

.method private updateOomAdjUpdatePolicy()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oomadj_update_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    return-void
.end method

.method private updatePushMessagingOverQuotaBehavior()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "push_messaging_over_quota_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    if-le v0, v2, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    :cond_1
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "max_cached_processes"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "background_settle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_shown_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_min_report_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_before_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgservice_screen_on_after_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "content_provider_retain_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "gc_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "force_bg_check_on_restricted"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_min_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "full_pss_lowered_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_1"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_2"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_3"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "power_check_max_cpu_4"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_usage_interaction_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_usage_interaction_time_post_s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usage_stats_interaction_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usage_stats_interaction_interval_post_s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_reset_run_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_restart_duration_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_min_restart_time_between"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_max_inactivity"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_bg_activity_start_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_restart_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service_crash_max_retry"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_start_async"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "memory_info_throttle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "top_to_fgs_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_crash_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_crash_count_reset_interval"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "process_crash_count_limit"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "imperceptible_kill_exempt_packages"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_assoc_log_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_phantom_processes"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "boot_time_temp_allowlist_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_foreground_timeout"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_background_activity_starts_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_atom_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fgs_start_denied_log_sample_rate"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "push_messaging_over_quota_behavior"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgs_allow_opt_out"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-ltz v0, :cond_0

    const-string v0, "  mOverrideMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    const-string v0, "  mCustomizedMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  OOMADJ_UPDATE_QUICK="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getOverrideMaxCachedProcesses()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    return v0
.end method

.method public synthetic lambda$updateImperceptibleKillExemptions$0$ActivityManagerConstants(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setOverrideMaxCachedProcesses(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    :cond_1
    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->loadDeviceConfigConstants()V

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateActivityStartsLoggingEnabled()V

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateForegroundServiceStartsLoggingEnabled()V

    return-void
.end method
