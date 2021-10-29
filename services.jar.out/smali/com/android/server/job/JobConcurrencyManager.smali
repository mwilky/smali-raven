.class Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobConcurrencyManager$PackageStats;,
        Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;,
        Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;,
        Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;,
        Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;,
        Lcom/android/server/job/JobConcurrencyManager$Stats;,
        Lcom/android/server/job/JobConcurrencyManager$WorkType;
    }
.end annotation


# static fields
.field private static final ALL_WORK_TYPES:I = 0x3f

.field static final CONFIG_KEY_PREFIX_CONCURRENCY:Ljava/lang/String; = "concurrency_"

.field private static final CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field private static final CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field private static final DEBUG:Z

.field private static final DEFAULT_PKG_CONCURRENCY_LIMIT_EJ:I = 0x3

.field private static final DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I = 0x8

.field private static final DEFAULT_SCREEN_OFF_ADJUSTMENT_DELAY_MS:J = 0x7530L

.field private static final KEY_PKG_CONCURRENCY_LIMIT_EJ:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_ej"

.field private static final KEY_PKG_CONCURRENCY_LIMIT_REGULAR:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_regular"

.field private static final KEY_SCREEN_OFF_ADJUSTMENT_DELAY_MS:Ljava/lang/String; = "concurrency_screen_off_adjustment_delay_ms"

.field static final NUM_WORK_TYPES:I = 0x6

.field private static final SYSTEM_STATE_REFRESH_MIN_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Concurrency"

.field static final WORK_TYPE_BG:I = 0x8

.field static final WORK_TYPE_BGUSER:I = 0x20

.field static final WORK_TYPE_BGUSER_IMPORTANT:I = 0x10

.field static final WORK_TYPE_EJ:I = 0x4

.field static final WORK_TYPE_FGS:I = 0x2

.field static final WORK_TYPE_NONE:I = 0x0

.field static final WORK_TYPE_TOP:I = 0x1


# instance fields
.field private final mActivePkgStats:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentInteractiveState:Z

.field private mEffectiveInteractiveState:Z

.field mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLastMemoryTrimLevel:I

.field private mLastScreenOffRealtime:J

.field private mLastScreenOnRealtime:J

.field private final mLock:Ljava/lang/Object;

.field private mNextSystemStateRefreshTime:J

.field private final mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgConcurrencyLimitEj:J

.field private mPkgConcurrencyLimitRegular:J

.field private final mPkgStatsPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mRampUpForScreenOff:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

.field mRecycledPreemptReasonCodeForContext:[I

.field mRecycledPreemptReasonForContext:[Ljava/lang/String;

.field mRecycledPreferredUidForContext:[I

.field mRecycledShouldStopJobReason:[Ljava/lang/String;

.field mRecycledSlotChanged:[Z

.field mRecycledWorkTypeForContext:[I

.field private final mRunningJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffAdjustmentDelayMs:J

.field private final mService:Lcom/android/server/job/JobSchedulerService;

.field mShouldRestrictBgUser:Z

.field private final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field private final mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

.field private mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public static synthetic $r8$lambda$q1zni_rSk5NsoVWlH1JE0tQHT2c(Lcom/android/server/job/JobConcurrencyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->rampUpForScreenOff()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 16

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    invoke-static {v4, v6, v8, v10, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const/16 v13, 0x20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v8, v10, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v10, "screen_on_normal"

    const/16 v14, 0xb

    invoke-direct {v1, v10, v14, v4, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v4, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v8, v10, v14, v15, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string/jumbo v11, "screen_on_moderate"

    const/16 v14, 0x9

    invoke-direct {v4, v11, v14, v8, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v8, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-static {v10, v11, v15}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v11, v15, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string/jumbo v14, "screen_on_low"

    invoke-direct {v8, v14, v6, v10, v11}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v10, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-static {v11, v14, v15}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-static {v14, v15, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v14, "screen_on_critical"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v11, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v4, v8, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v5, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v4, v6, v8, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v6, v8, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v8, "screen_off_normal"

    const/16 v10, 0x10

    invoke-direct {v1, v8, v10, v4, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v4, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-static {v5, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v6, v8, v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v8, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v10, "screen_off_moderate"

    const/16 v11, 0xe

    invoke-direct {v4, v10, v11, v6, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v8, v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v7, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v10, "screen_off_low"

    const/16 v11, 0x9

    invoke-direct {v6, v10, v11, v8, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v8, v5, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v5, v8, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v5, "screen_off_critical"

    const/4 v8, 0x6

    invoke-direct {v7, v5, v8, v3, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledSlotChanged:[Z

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidForContext:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledWorkTypeForContext:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreemptReasonForContext:[Ljava/lang/String;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreemptReasonCodeForContext:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledShouldStopJobReason:[Ljava/lang/String;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-direct {v1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    new-instance v1, Landroid/util/Pools$SimplePool;

    invoke-direct {v1, v0}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:J

    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:J

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "assignJobsToContexts"

    const-string/jumbo v2, "refreshSystemState"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-direct {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobConcurrencyManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->stopLongRunningJobsLocked(Ljava/lang/String;)V

    return-void
.end method

.method private assignJobsToContextsInternalLocked()V
    .locals 29

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const-string v2, "JobScheduler.Concurrency"

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->printPendingQueueLocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledSlotChanged:[Z

    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidForContext:[I

    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledWorkTypeForContext:[I

    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreemptReasonForContext:[Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreemptReasonCodeForContext:[I

    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledShouldStopJobReason:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v11}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetCounts()V

    const/4 v11, 0x1

    invoke-direct {v0, v1, v11}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Ljava/util/List;Z)V

    const/4 v12, 0x0

    :goto_0
    const/16 v13, 0x10

    if-ge v12, v13, :cond_2

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v15

    aput-object v15, v4, v12

    if-eqz v15, :cond_1

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementRunningJobCount(I)V

    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v11

    aput v11, v7, v12

    :cond_1
    const/4 v11, 0x0

    aput-boolean v11, v5, v12

    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v14

    aput v14, v6, v12

    const/4 v14, 0x0

    aput-object v14, v8, v12

    aput v11, v9, v12

    invoke-virtual {v0, v13}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    sget-boolean v12, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string/jumbo v12, "running jobs initial"

    invoke-static {v4, v12}, Lcom/android/server/job/JobConcurrencyManager;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v12}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onCountDone()V

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_f

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/JobStatus;

    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v6

    move-object/from16 v27, v10

    move/from16 v24, v12

    goto/16 :goto_8

    :cond_4
    const v15, 0x7fffffff

    const/16 v17, -0x1

    invoke-virtual {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v11

    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v13, v11}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v13

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v21

    const/16 v16, 0x1

    xor-int/lit8 v21, v21, 0x1

    const/16 v22, 0x0

    move/from16 v28, v22

    move-object/from16 v22, v1

    move/from16 v1, v28

    :goto_2
    move-object/from16 v23, v2

    const/16 v2, 0x10

    if-ge v1, v2, :cond_c

    aget-object v2, v4, v1

    move/from16 v24, v12

    aget v12, v6, v1

    if-nez v2, :cond_8

    move-object/from16 v25, v6

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    if-eq v12, v6, :cond_6

    const/4 v6, -0x1

    if-ne v12, v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_7

    if-eqz v21, :cond_7

    if-eqz v13, :cond_7

    move/from16 v17, v1

    const/16 v18, 0x1

    move-object/from16 v27, v10

    goto/16 :goto_6

    :cond_7
    move-object/from16 v27, v10

    goto :goto_5

    :cond_8
    move-object/from16 v25, v6

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    move/from16 v26, v12

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v12

    if-eq v6, v12, :cond_9

    aget-object v6, v10, v1

    iget v12, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    move-object/from16 v27, v10

    const/16 v10, 0x28

    if-ge v12, v10, :cond_b

    if-eqz v6, :cond_b

    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v10

    if-eqz v10, :cond_b

    move-object v10, v6

    const/4 v12, 0x4

    move-object/from16 v20, v10

    move/from16 v19, v12

    goto :goto_5

    :cond_9
    move-object/from16 v27, v10

    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v6

    iget v10, v14, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-lt v6, v10, :cond_a

    goto :goto_5

    :cond_a
    if-le v15, v6, :cond_b

    move v10, v6

    move v12, v1

    const-string v15, "higher priority job found"

    const/16 v17, 0x2

    move-object/from16 v20, v15

    move/from16 v19, v17

    move v15, v10

    move/from16 v17, v12

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v23

    move/from16 v12, v24

    move-object/from16 v6, v25

    move-object/from16 v10, v27

    goto/16 :goto_2

    :cond_c
    move-object/from16 v25, v6

    move-object/from16 v27, v10

    move/from16 v24, v12

    move/from16 v1, v17

    :goto_6
    nop

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v2

    const/4 v6, -0x1

    if-eq v1, v6, :cond_d

    aput-object v14, v4, v1

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    aput v19, v9, v1

    aput-object v20, v8, v1

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v10

    invoke-static {v2, v6, v10}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->access$400(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    goto :goto_7

    :cond_d
    const/4 v6, 0x1

    :goto_7
    if-eqz v18, :cond_e

    aput v13, v7, v1

    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v10, v13, v11}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v12

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v12, v6, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    :goto_8
    add-int/lit8 v12, v24, 0x1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v6, v25

    move-object/from16 v10, v27

    const/4 v11, 0x0

    const/16 v13, 0x10

    goto/16 :goto_1

    :cond_f
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v6

    move-object/from16 v27, v10

    move/from16 v24, v12

    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string/jumbo v1, "running jobs final"

    invoke-static {v4, v1}, Lcom/android/server/job/JobConcurrencyManager;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assignJobsToContexts: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    move-object/from16 v2, v23

    :goto_9
    const/4 v1, 0x0

    :goto_a
    const/16 v6, 0x10

    if-ge v1, v6, :cond_17

    const/4 v10, 0x0

    aget-boolean v11, v5, v1

    if-eqz v11, :cond_15

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v11

    if-eqz v11, :cond_13

    sget-boolean v12, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v12, :cond_11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preempting job: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/JobServiceContext;

    aget v13, v9, v1

    aget-object v14, v8, v1

    const/4 v15, 0x2

    invoke-virtual {v12, v13, v15, v14}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    aget v12, v9, v1

    if-ne v12, v15, :cond_12

    const/4 v12, 0x1

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    :goto_b
    move v10, v12

    goto :goto_c

    :cond_13
    aget-object v12, v4, v1

    sget-boolean v13, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v13, :cond_14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "About to run job on context "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", job: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    aget v14, v7, v1

    invoke-direct {v0, v13, v12, v14}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    :cond_15
    :goto_c
    if-nez v10, :cond_16

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_17
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetStagingCount()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    return-void
.end method

.method private getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;-><init>(Lcom/android/server/job/JobConcurrencyManager$1;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->access$600(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ILjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 8

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v2

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    iget v4, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    add-int/2addr v2, v4

    int-to-long v4, v2

    iget-wide v6, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    move v1, v3

    :cond_3
    return v1

    :cond_4
    iget v2, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iget v4, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    add-int/2addr v2, v4

    int-to-long v4, v2

    iget-wide v6, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method static synthetic lambda$dumpLocked$1(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->access$800(Lcom/android/server/job/JobConcurrencyManager$PackageStats;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->access$900(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V

    return-void
.end method

.method private noteConcurrency()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getRunningJobCount(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    return-void
.end method

.method private onInteractiveStateChanged(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "JobScheduler.Concurrency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    if-eqz p1, :cond_2

    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method private static printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    const/4 v3, -0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private printPendingQueueLocked()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private rampUpForScreenOff()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-wide v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-lez v3, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "JobScheduler.Concurrency"

    const-string v4, "Ramping up concurrency"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private refreshSystemStateLocked()Z
    .locals 8

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    iput v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v2

    iput v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v3
.end method

.method private startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3, p2}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->access$400(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error executing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.Concurrency"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onStagedJobFailed(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, p2}, Lcom/android/server/job/controllers/StateController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobStarted(I)V

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->access$700(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v4, p2}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_3
    return-void
.end method

.method private stopLongRunningJobsLocked(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCounterConfigLocked()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->refreshSystemStateLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    :goto_0
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_1

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_1

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_1

    :pswitch_2
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    nop

    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->setConfig(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNonRunningPrioritiesLocked(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementPendingJobCount(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static workTypeToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WORK("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "BGUSER"

    return-object v0

    :sswitch_1
    const-string v0, "BGUSER_IMPORTANT"

    return-object v0

    :sswitch_2
    const-string v0, "BG"

    return-object v0

    :sswitch_3
    const-string v0, "EJ"

    return-object v0

    :sswitch_4
    const-string v0, "FGS"

    return-object v0

    :sswitch_5
    const-string v0, "TOP"

    return-object v0

    :sswitch_6
    const-string v0, "NONE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method assignJobsToContextsLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsInternalLocked()V

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V
    .locals 4

    const-string v0, "Concurrency:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    const-string v0, "Configuration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "concurrency_screen_off_adjustment_delay_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "concurrency_pkg_concurrency_limit_ej"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "concurrency_pkg_concurrency_limit_regular"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Screen state: current "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ON"

    const-string v2, "OFF"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  effective "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Last screen ON: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long v0, p2, p4

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Last screen OFF: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long v0, p2, p4

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Current work counts: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mLastMemoryTrimLevel: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Active Package stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "User Grace Period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw v0
.end method

.method public dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    const/16 v2, 0x23

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v3, 0x28

    if-lt v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-lt v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x8

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_2
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x10

    :cond_4
    or-int/lit8 v0, v0, 0x20

    :cond_5
    :goto_1
    return v0
.end method

.method isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v1, :cond_1

    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") marked as removed before jobs stopped running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Concurrency"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobFinished(I)V

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    const/4 v5, 0x0

    const-string v6, "JobScheduler.Concurrency"

    if-nez v3, :cond_0

    const-string v7, "Running job didn\'t have an active PackageStats object"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v7, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-static {v3, v5, v7}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->access$700(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v7, :cond_1

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-gtz v7, :cond_1

    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget v8, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    iget-object v9, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v7, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    invoke-direct {v0, v7, v5}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Ljava/util/List;Z)V

    const/4 v5, 0x0

    move/from16 v8, p3

    move/from16 v9, p3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_9

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/JobStatus;

    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v16, v3

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v15

    move-object/from16 v16, v3

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    if-eq v15, v3, :cond_4

    if-nez v10, :cond_8

    invoke-direct {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v15, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v15

    if-eqz v15, :cond_3

    move-object v10, v14

    move v11, v15

    move v12, v3

    :cond_3
    goto :goto_2

    :cond_4
    iget v3, v14, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    iget v15, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-gt v3, v15, :cond_5

    invoke-direct {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    iget v3, v5, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    iget v15, v14, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-ge v3, v15, :cond_8

    :cond_6
    move-object v3, v14

    invoke-virtual {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v9, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v9

    if-nez v9, :cond_7

    move/from16 v8, p3

    move v9, v5

    move-object v5, v3

    goto :goto_2

    :cond_7
    move v8, v9

    move v9, v5

    move-object v5, v3

    :cond_8
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_1

    :cond_9
    move-object/from16 v16, v3

    const-string v3, "Running job "

    if-eqz v5, :cond_b

    sget-boolean v13, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v13, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as preemption"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v8, v9}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    invoke-direct {v0, v1, v5, v8}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto/16 :goto_5

    :cond_b
    sget-boolean v13, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v13, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find preemption job for uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    if-eqz v10, :cond_16

    if-eqz v13, :cond_d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " instead"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v11, v12}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto/16 :goto_5

    :cond_e
    move-object/from16 v16, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    invoke-direct {v0, v7, v5}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Ljava/util/List;Z)V

    const/4 v3, 0x0

    move/from16 v5, p3

    move/from16 v8, p3

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_14

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_4

    :cond_f
    invoke-direct {v0, v10}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_4

    :cond_10
    invoke-virtual {v0, v10}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v11

    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v12, v11}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v12

    if-nez v12, :cond_11

    goto :goto_4

    :cond_11
    if-eqz v3, :cond_12

    iget v13, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    iget v14, v10, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-ge v13, v14, :cond_13

    :cond_12
    move-object v3, v10

    move v5, v12

    move v8, v11

    :cond_13
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_14
    if-eqz v3, :cond_17

    sget-boolean v9, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to run job: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v6, v5, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    invoke-direct {v0, v1, v3, v5}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto :goto_6

    :cond_16
    :goto_5
    nop

    :cond_17
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    return-void
.end method

.method public onSystemReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    const-string v3, "JobScheduler.Concurrency"

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method onUserRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->onUserRemoved(I)V

    return-void
.end method

.method shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_1

    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v4, v0, :cond_1

    iget v0, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    :cond_1
    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    if-eq v4, v0, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {v5, v0}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->isWithinGracePeriodForUser(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "battery saver"

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "deep doze"

    return-object v1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v4

    if-gt v3, v4, :cond_10

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->isOverTypeLimit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v5

    const-string v6, " queue"

    const-string v7, "blocking "

    if-nez v5, :cond_b

    iget-boolean v5, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v5

    if-lez v5, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    const/16 v5, 0x3f

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v7}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v8

    and-int v9, v8, v5

    if-lez v9, :cond_8

    iget-object v9, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v9, v8, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v9

    if-eqz v9, :cond_8

    const-string v1, "blocking other pending jobs"

    return-object v1

    :cond_8
    not-int v9, v8

    and-int/2addr v5, v9

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    return-object v1

    :cond_b
    :goto_2
    const/16 v5, 0x10

    const/4 v8, 0x4

    if-eq v2, v5, :cond_d

    const/16 v9, 0x20

    if-ne v2, v9, :cond_c

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v5

    if-lez v5, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    :goto_3
    iget-object v9, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v9, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v9

    if-lez v9, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_e
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v8, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v5

    if-eqz v5, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    return-object v1

    :cond_10
    :goto_4
    const-string/jumbo v1, "too many jobs running"

    return-object v1
.end method

.method updateConfigLocked()V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "jobscheduler"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    const-string v1, "concurrency_screen_off_adjustment_delay_ms"

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    nop

    const-string v1, "concurrency_pkg_concurrency_limit_ej"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:J

    nop

    const-string v1, "concurrency_pkg_concurrency_limit_regular"

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:J

    return-void
.end method
