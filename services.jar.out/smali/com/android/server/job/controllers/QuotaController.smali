.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/QuotaController$QcConstants;,
        Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;,
        Lcom/android/server/job/controllers/QuotaController$AlarmQueue;,
        Lcom/android/server/job/controllers/QuotaController$QcHandler;,
        Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;,
        Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;,
        Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;,
        Lcom/android/server/job/controllers/QuotaController$StandbyTracker;,
        Lcom/android/server/job/controllers/QuotaController$TopAppTimer;,
        Lcom/android/server/job/controllers/QuotaController$Timer;,
        Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;,
        Lcom/android/server/job/controllers/QuotaController$TimingSession;,
        Lcom/android/server/job/controllers/QuotaController$ChargingTracker;,
        Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;,
        Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;,
        Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;,
        Lcom/android/server/job/controllers/QuotaController$QcUidObserver;,
        Lcom/android/server/job/controllers/QuotaController$ExecutionStats;,
        Lcom/android/server/job/controllers/QuotaController$Package;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_CLEANUP:Ljava/lang/String; = "*job.cleanup*"

.field private static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String; = "*job.quota_check*"

.field private static final DEBUG:Z

.field private static final MAX_PERIOD_MS:J = 0x5265c00L

.field private static final MSG_CHECK_PACKAGE:I = 0x2

.field private static final MSG_CLEAN_UP_SESSIONS:I = 0x1

.field static final MSG_END_GRACE_PERIOD:I = 0x6

.field private static final MSG_PROCESS_USAGE_EVENT:I = 0x5

.field static final MSG_REACHED_EJ_QUOTA:I = 0x4

.field static final MSG_REACHED_QUOTA:I = 0x0

.field private static final MSG_UID_PROCESS_STATE_CHANGED:I = 0x3

.field private static final SYSTEM_APP_CHECK_FLAGS:I = 0x4c3000

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Quota"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedTimeIntoQuotaMs:J

.field private mAllowedTimePerPeriodMs:J

.field private final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field private final mBucketPeriodsMs:[J

.field private final mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

.field private final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field private final mDeleteOldSessionsFunctor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEJGracePeriodTempAllowlistMs:J

.field private mEJGracePeriodTopAppMs:J

.field private mEJLimitWindowSizeMs:J

.field private final mEJLimitsMs:[J

.field private final mEJPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mEJRewardInteractionMs:J

.field private mEJRewardNotificationSeenMs:J

.field private mEJRewardTopAppMs:J

.field private final mEJStats:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;",
            ">;"
        }
    .end annotation
.end field

.field private final mEJTimingSessions:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEJTopAppTimeChunkSizeMs:J

.field private final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field private mEjLimitAdditionInstallerMs:J

.field private mEjLimitAdditionSpecialMs:J

.field private final mExecutionStatsCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/server/job/controllers/QuotaController$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

.field private final mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

.field private final mMaxBucketJobCounts:[I

.field private final mMaxBucketSessionCounts:[I

.field private mMaxExecutionTimeIntoQuotaMs:J

.field private mMaxExecutionTimeMs:J

.field private mMaxJobCountPerRateLimitingWindow:I

.field private mMaxSessionCountPerRateLimitingWindow:I

.field private mNextCleanupTimeElapsed:J

.field private final mPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field private mQuotaBufferMs:J

.field private mRateLimitingWindowMs:J

.field private final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mSystemInstallers:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempAllowlistCache:Landroid/util/SparseBooleanArray;

.field private final mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

.field private final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field private mTimingSessionCoalescingDurationMs:J

.field private final mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

.field private final mTimingSessions:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTopAppCache:Landroid/util/SparseBooleanArray;

.field private final mTopAppGraceCache:Landroid/util/SparseLongArray;

.field private final mTopAppTrackers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$TopAppTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    const-wide/32 v4, 0xdbba00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    const-wide/16 v6, 0x7530

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v0, 0x6

    new-array v8, v0, [J

    fill-array-data v8, :array_0

    iput-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    iput-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    new-array v8, v0, [I

    fill-array-data v8, :array_2

    iput-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    const-wide/16 v8, 0x1388

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const-wide/32 v8, 0x1b7740

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    const-wide/32 v8, 0xdbba0

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    const-wide/32 v8, 0x5265c00

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    const-wide/16 v6, 0x2710

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    const-wide/16 v6, 0x3a98

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->startTracking()V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v0, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v3, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    const-class v3, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerAllowlistInternal;

    new-instance v4, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v3, v4}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v5, p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-interface {v4, v5, v7, v6, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v5, p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    const/4 v6, 0x2

    invoke-interface {v4, v5, v7, v6, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void

    :array_0
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
        0x0
        0x5265c00
    .end array-data

    :array_1
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
        0x0
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 8
        0x1b7740
        0x1b7740
        0x927c0
        0x927c0
        0x0
        0x493e0
    .end array-data
.end method

.method static synthetic access$000(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/job/controllers/QuotaController;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCountLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/job/controllers/QuotaController;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->grantRewardForInstantEvent(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/job/controllers/QuotaController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/job/controllers/QuotaController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method static synthetic access$4602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide p1
.end method

.method static synthetic access$4700(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide p1
.end method

.method static synthetic access$4802(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$4900(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide p1
.end method

.method static synthetic access$5000(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide p1
.end method

.method static synthetic access$5102(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$5200(Lcom/android/server/job/controllers/QuotaController;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method static synthetic access$5302(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/android/server/job/controllers/QuotaController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/job/controllers/QuotaController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/job/controllers/QuotaController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/job/controllers/QuotaController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method static synthetic access$5602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide p1
.end method

.method static synthetic access$5700(Lcom/android/server/job/controllers/QuotaController;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method static synthetic access$5802(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide p1
.end method

.method static synthetic access$5900(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method static synthetic access$5902(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v0

    return v0
.end method

.method private cacheInstallerPackagesLocked(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x4c3000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-static {v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;JJ)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide/from16 v2, p2

    const/4 v4, 0x0

    move v6, v4

    move-wide v4, v2

    move-wide v2, v0

    move-wide/from16 v0, p4

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v9, v9, p2

    if-gez v9, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v9, v9, p2

    if-gtz v9, :cond_1

    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v9, v9, p2

    add-long/2addr v2, v9

    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    goto :goto_1

    :cond_1
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v9, v4

    cmp-long v11, v9, v0

    if-lez v11, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v11, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v13, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v11, v13

    add-long/2addr v11, v9

    add-long/2addr v2, v11

    sub-long/2addr v0, v9

    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v7, p1

    :goto_2
    add-long/2addr v2, v0

    move-object v6, p0

    iget-wide v8, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calculated quota consumed time too high: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "JobScheduler.Quota"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-wide v2
.end method

.method private getEJLimitMsLocked(ILjava/lang/String;I)J
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, p3

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 11

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    const-string v0, "JobScheduler.Quota"

    const-string v1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    aget-object v1, v0, p3

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v2}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v1, v2

    aput-object v1, v0, p3

    :cond_2
    if-eqz p4, :cond_5

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v2, v2, p3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v4, v4, p3

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v5, v5, p3

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v7, v7, v2

    if-nez v7, :cond_4

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v7, v4, :cond_4

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v7, v5, :cond_5

    :cond_4
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iput v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    iput v5, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    :cond_5
    return-object v1
.end method

.method private getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    nop

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .locals 6

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private grantRewardForInstantEvent(ILjava/lang/String;J)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, v1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

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

.method private handleNewChargingStateLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->access$800(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNewChargingStateLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    return-void
.end method

.method private static hashLong(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private incrementTimingSessionCountLocked(ILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    if-nez v4, :cond_1

    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    aput-object v4, v2, v3

    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isQuotaFreeLocked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidInForeground(I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method private isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .locals 7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method private isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .locals 7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method static synthetic lambda$dumpControllerStateLocked$4(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/QuotaController$TopAppTimer;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic lambda$invalidateAllExecutionStatsLocked$0(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private maybeUpdateAllConstraintsLocked()V
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4, v6}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_2
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p3, p4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v1

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_4

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {p0, v7}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, p1, p2, v6}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v8

    or-int/2addr v4, v8

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v8

    if-ne v1, v8, :cond_2

    invoke-direct {p0, v7, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v8

    or-int/2addr v4, v8

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    invoke-direct {p0, v7, p1, p2, v8}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v8

    or-int/2addr v4, v8

    :goto_1
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    invoke-direct {p0, v7, p1, p2, v8}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v9

    or-int/2addr v4, v9

    xor-int/lit8 v9, v8, 0x1

    or-int/2addr v3, v9

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v5, p3, p4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0, p3, p4, v1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    :goto_3
    return v4

    :cond_7
    :goto_4
    return v1
.end method

.method private maybeUpdateConstraintForUidLocked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->prepare()V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    return v0
.end method

.method private saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    iget-wide v4, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v6, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v6

    add-long/2addr v4, p5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    nop

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v0

    return v0
.end method

.method private setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobQuotaConstraintSatisfied(JZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static string(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .locals 7

    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v0

    neg-long v2, p6

    invoke-virtual {p5, v2, v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    move-result-wide v2

    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debits overflowed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.Quota"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, p3, p4, v2, v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->updateDebitAdjustment(JJ)V

    const/4 v4, 0x1

    :cond_2
    return v4
.end method


# virtual methods
.method public clearAppStatsLocked(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "clearAppStats called before Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "clearAppStats called before EJ Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method deleteObsoleteSessionsLocked()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->access$3200(Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->test(Lcom/android/server/job/controllers/QuotaController$TimingSession;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v10

    neg-long v10, v8

    invoke-virtual {v4, v10, v11}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$6100(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$6200(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is charging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Cached top apps: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached top app grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached temp allowlist: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached temp allowlist grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Special apps:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "System installers={"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v1, ", "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, "->"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, "Saved sessions:"

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_3
    if-ltz v6, :cond_2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    const/4 v3, 0x0

    :goto_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_6
    if-ltz v6, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Cached execution stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, ": "

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    const/4 v3, 0x0

    :goto_8
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_9
    array-length v7, v5

    if-ge v6, v7, :cond_b

    aget-object v7, v5, v6

    if-eqz v7, :cond_a

    invoke-static {v6}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "EJ debits:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    const/4 v3, 0x0

    :goto_b
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_e

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v7

    const-wide v8, 0x10800000001L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    const-wide v9, 0x10300000006L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    const-wide v11, 0x20500000003L

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v8, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;

    invoke-direct {v8, v0, v2, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v7, v8}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v8

    if-ge v7, v8, :cond_8

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    const/4 v11, 0x0

    :goto_2
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v12

    if-ge v11, v12, :cond_7

    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v12, v7, v11}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-wide v13, 0x20b00000005L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v15, v7, v11}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v9, 0x10b00000002L

    invoke-virtual {v15, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v9, :cond_1

    move-wide/from16 v16, v3

    const-wide v3, 0x10b00000006L

    invoke-virtual {v9, v1, v3, v4, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    goto :goto_3

    :cond_1
    move-wide/from16 v16, v3

    :goto_3
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4
    if-ltz v4, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-object v15, v3

    const-wide v2, 0x20b00000003L

    invoke-virtual {v10, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v2, p4

    move-object v3, v15

    goto :goto_4

    :cond_2
    move-object v15, v3

    goto :goto_5

    :cond_3
    move-object v15, v3

    :goto_5
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    :goto_6
    array-length v4, v2

    if-ge v3, v4, :cond_5

    aget-object v4, v2, v3

    if-nez v4, :cond_4

    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object/from16 v18, v9

    move/from16 v21, v11

    goto/16 :goto_7

    :cond_4
    move v10, v8

    move-object/from16 v18, v9

    const-wide v8, 0x20b00000004L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    move-wide/from16 v19, v5

    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000002L

    move/from16 v22, v10

    move/from16 v21, v11

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000003L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000eL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000fL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000004L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000005L

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v10, 0x10300000006L

    invoke-virtual {v1, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000007L

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000bL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000008L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000009L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000aL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1030000000cL

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000dL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, v18

    move-wide/from16 v5, v19

    move/from16 v11, v21

    move/from16 v8, v22

    goto/16 :goto_6

    :cond_5
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object/from16 v18, v9

    move/from16 v21, v11

    goto :goto_8

    :cond_6
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object/from16 v18, v9

    move/from16 v21, v11

    :goto_8
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v11, v21, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v16

    move-wide/from16 v5, v19

    move/from16 v8, v22

    const-wide v9, 0x10300000006L

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    move/from16 v22, v8

    move/from16 v21, v11

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    const-wide v9, 0x10300000006L

    goto/16 :goto_1

    :cond_8
    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->dumpLocked(Landroid/util/proto/ProtoOutputStream;J)V

    move-wide/from16 v2, v19

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v4, v16

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method getAllowedTimePerPeriodMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method getBucketMaxJobCounts()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method getBucketMaxSessionCounts()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method getBucketWindowSizes()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-static {p2, p1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method getEJGracePeriodTempAllowlistMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method getEJGracePeriodTopAppMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method getEJLimitWindowSizeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method getEJLimitsMs()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object v0
.end method

.method getEJRewardInteractionMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method getEJRewardNotificationSeenMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method getEJRewardTopAppMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getEJTopAppTimeChunkSizeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method getEjLimitAdditionInstallerMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method getEjLimitAdditionSpecialMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    return-object v0
.end method

.method getForegroundUids()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object v0
.end method

.method getInQuotaBufferMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method getMaxExecutionTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method getMaxJobCountPerRateLimitingWindow()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const-wide/16 v1, 0x2

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    div-long/2addr v3, v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    nop

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    div-long/2addr v3, v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxSessionCountPerRateLimitingWindow()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method getMinQuotaCheckDelayMs()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->access$6000(Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object v0
.end method

.method getRateLimitingWindowMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const-wide/16 v4, 0x0

    return-wide v4

    :cond_0
    nop

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v11, v9, v11

    if-eqz v8, :cond_3

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-wide v15, v4

    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_1

    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v17, v9

    iget-wide v9, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v9

    add-long/2addr v6, v4

    neg-long v9, v4

    invoke-virtual {v3, v9, v10}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    invoke-interface {v8, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    nop

    move-wide v4, v15

    move-wide/from16 v9, v17

    goto :goto_0

    :cond_1
    move-wide/from16 v17, v9

    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_4

    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long v4, v11, v4

    add-long/2addr v6, v4

    goto :goto_1

    :cond_2
    move-wide v15, v4

    move-wide/from16 v17, v9

    goto :goto_1

    :cond_3
    move-wide v15, v4

    move-wide/from16 v17, v9

    :cond_4
    :goto_1
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_5

    move-wide/from16 v9, v17

    invoke-virtual {v4, v9, v10}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->getPendingReward(J)J

    move-result-wide v13

    add-long/2addr v6, v13

    goto :goto_2

    :cond_5
    move-wide/from16 v9, v17

    :goto_2
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-nez v5, :cond_6

    return-wide v6

    :cond_6
    sget-object v13, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v13}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v13

    sub-long v13, v6, v13

    return-wide v13
.end method

.method getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .locals 3

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    nop

    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v9

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v11, v6, v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    move-wide v15, v3

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-wide v13, v15

    move/from16 v15, v21

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_6

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_1

    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v22, v6

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v6

    add-long/2addr v13, v1

    invoke-interface {v5, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v26, v11

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_1
    move-wide/from16 v22, v6

    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_2

    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v11

    move-wide/from16 v19, v1

    move-wide/from16 v26, v11

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_2
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    if-nez v15, :cond_3

    move-wide v6, v11

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v15, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v6, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    :goto_1
    sub-long/2addr v1, v6

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long v17, v17, v6

    cmp-long v16, v6, v1

    if-nez v16, :cond_4

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v26, v11

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v11

    add-long v19, v19, v1

    goto :goto_2

    :cond_4
    move-wide/from16 v24, v1

    move-wide/from16 v26, v11

    :goto_2
    sub-long/2addr v13, v6

    const-wide/16 v1, 0x0

    cmp-long v11, v13, v1

    if-gtz v11, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v6, v22

    move-wide/from16 v11, v26

    goto :goto_0

    :cond_6
    move-wide/from16 v22, v6

    move-wide/from16 v26, v11

    :goto_4
    add-long v0, v17, v19

    add-long/2addr v0, v13

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_7
    :goto_5
    return-wide v3
.end method

.method getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    invoke-static {v8, v7, v9, v10}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v11

    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    invoke-virtual {v6, v7, v8, v11}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v13

    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v14, v9, v0

    const-wide/32 v0, 0x5265c00

    sub-long v16, v9, v0

    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v18, v0, v2

    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v20, v0, v2

    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v2, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    nop

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v4

    move-wide v2, v14

    move-wide v7, v4

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v2, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0

    :cond_4
    return-wide v2
.end method

.method getTimingSessionCoalescingDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method incrementJobCountLocked(ILjava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    if-nez v4, :cond_1

    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    aput-object v4, v2, v3

    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v5, p3

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method invalidateAllExecutionStatsLocked()V
    .locals 4

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 14

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_3

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_6

    cmp-long v9, v2, v7

    if-gez v9, :cond_5

    goto :goto_2

    :cond_5
    move v9, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v1

    :goto_3
    if-eqz v9, :cond_7

    return v1

    :cond_7
    const-wide/16 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v12

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    goto :goto_4

    :cond_8
    move v1, v6

    :goto_4
    return v1

    :cond_9
    :goto_5
    return v1
.end method

.method isWithinQuotaLocked(ILjava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0
.end method

.method isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public synthetic lambda$dumpControllerStateLocked$3$QuotaController(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "#"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " (TOP)"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "within EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "out of EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "within regular quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "not within quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_5

    nop

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v2, "ms remaining in EJ quota"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "should be stopped after min execution time"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v2, "ms remaining in quota"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$5$QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, 0x20b00000004L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x10500000002L

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000003L

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v6

    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10800000004L

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000005L

    const/high16 v6, 0x1000000

    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10300000006L

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10800000007L

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000008L

    const/high16 v6, 0x800000

    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$QuotaController(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$onConstantsUpdatedLocked$2$QuotaController()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeScheduleCleanupAlarmLocked()V
    .locals 15

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    cmp-long v2, v2, v0

    const-string v3, "JobScheduler.Quota"

    if-lez v2, :cond_1

    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling cleanup since there\'s already one at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Didn\'t find a time to schedule cleanup"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v10, v6, v8

    const-wide/32 v12, 0x927c0

    cmp-long v2, v10, v12

    if-gtz v2, :cond_4

    add-long v6, v8, v12

    :cond_4
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x3

    iget-object v13, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v14, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const-string v12, "*job.cleanup*"

    move-wide v10, v6

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduled next cleanup for "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v6

    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v7

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v8

    iget-wide v10, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v11, v13, v11

    if-gez v11, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    const-wide/16 v12, 0x0

    const-string v14, "JobScheduler.Quota"

    if-eqz v11, :cond_3

    cmp-long v16, v8, v12

    if-lez v16, :cond_3

    sget-boolean v10, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "maybeScheduleStartAlarmLocked called for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " even though it already has "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms in its quota."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v10, v1, v2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v1, v13, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3
    const-wide v15, 0x7fffffffffffffffL

    const-wide v17, 0x7fffffffffffffffL

    if-nez v11, :cond_6

    move/from16 v19, v11

    iget-wide v10, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    if-nez v6, :cond_4

    iget v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v12, v13, :cond_4

    iget-wide v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_4
    if-nez v7, :cond_5

    iget v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v12, v13, :cond_5

    iget-wide v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_5
    move-wide v15, v10

    goto :goto_1

    :cond_6
    move/from16 v19, v11

    move-wide v10, v15

    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gtz v12, :cond_e

    nop

    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v12

    move-object v15, v4

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v12, v3

    const-wide/16 v3, 0x0

    move/from16 v16, v6

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v21

    if-eqz v21, :cond_8

    sget-object v21, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move/from16 v22, v7

    move-wide/from16 v23, v8

    invoke-virtual/range {v21 .. v21}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v25

    add-long v3, v3, v25

    cmp-long v9, v3, v12

    if-ltz v9, :cond_7

    sub-long v25, v7, v12

    move-wide/from16 v27, v3

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long v17, v25, v3

    move-wide/from16 v3, v27

    goto :goto_2

    :cond_7
    move-wide/from16 v27, v3

    goto :goto_2

    :cond_8
    move/from16 v22, v7

    move-wide/from16 v23, v8

    :goto_2
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_3
    if-ltz v8, :cond_a

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v20, v10

    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v10

    add-long/2addr v3, v1

    cmp-long v10, v3, v12

    if-ltz v10, :cond_9

    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long v25, v3, v12

    add-long v10, v10, v25

    move-wide/from16 v25, v1

    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long/2addr v10, v1

    move-wide/from16 v17, v10

    goto :goto_4

    :cond_9
    move-wide/from16 v25, v1

    add-int/lit8 v8, v8, -0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v10, v20

    goto :goto_3

    :cond_a
    move-wide/from16 v20, v10

    :goto_4
    move-wide/from16 v1, v17

    goto :goto_5

    :cond_b
    move-wide/from16 v20, v10

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    if-eqz v19, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has 0 EJ quota without running anything"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    move-wide/from16 v1, v17

    goto :goto_5

    :cond_e
    move-object v15, v4

    move/from16 v16, v6

    move/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v20, v10

    move-wide/from16 v1, v17

    :goto_5
    move-wide/from16 v3, v20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gtz v8, :cond_f

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In quota time is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v8, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms old. Now="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", inQuotaTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v10, 0x493e0

    add-long v6, v8, v10

    :cond_f
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual {v8, v9, v10, v6, v7}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->addAlarmLocked(ILjava/lang/String;J)V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 8

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-nez v4, :cond_0

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v5

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    xor-int/lit8 v7, v6, 0x1

    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v5, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v7

    invoke-virtual {p0, v2, v3, v7}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 3

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "JobScheduler.Quota"

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_1
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4000(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserAddedLocked(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmsLocked(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is top started job"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    :goto_0
    move-object v9, v3

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-nez v10, :cond_4

    new-instance v11, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    move-object v3, v11

    move-object v4, p0

    move v5, v2

    move v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V

    move-object v10, v11

    invoke-virtual {v9, v0, v1, v10}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v10, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4002(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4102(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4202(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4302(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;Z)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-eqz v6, :cond_1

    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :goto_1
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    add-long v9, v5, v7

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v9

    if-eqz v9, :cond_4

    nop

    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v9

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_2
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    add-long/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_3
    iget v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v9, v10, :cond_4

    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_4
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_12

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    goto/16 :goto_8

    :cond_5
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v5, v10

    sub-long v12, v5, v7

    const/4 v14, 0x0

    const-wide v15, 0x7fffffffffffffffL

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    move v8, v7

    move-wide v1, v15

    :goto_2
    if-ltz v8, :cond_10

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_c

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_6

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    move-wide/from16 v20, v4

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v10

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide/from16 v4, v20

    goto :goto_3

    :cond_6
    move-wide v4, v10

    const-wide/16 v1, 0x0

    :goto_3
    move-wide/from16 v20, v1

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v22, v10

    iget-wide v10, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v10, v4

    add-long/2addr v1, v10

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v1, v1, v10

    if-ltz v1, :cond_7

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    add-long/2addr v10, v4

    move-wide/from16 v24, v4

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long/2addr v10, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v10, v4

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_4

    :cond_7
    move-wide/from16 v24, v4

    :goto_4
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v1, v2, :cond_8

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v10

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_8
    if-eq v8, v7, :cond_a

    add-int/lit8 v1, v8, 0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v4

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_9

    goto :goto_5

    :cond_9
    move-wide/from16 v1, v20

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v14, v1, :cond_b

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v10

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_b
    move-wide/from16 v1, v20

    goto :goto_6

    :cond_c
    move-wide/from16 v22, v10

    :goto_6
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_e

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move/from16 v17, v7

    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v10, v6

    add-long/2addr v4, v10

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v12

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v6, v10

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_d
    const-wide/32 v10, 0x5265c00

    goto :goto_7

    :cond_e
    move/from16 v17, v7

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_11

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v6, v12

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    const-wide/16 v1, 0x0

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_f

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v6, v12

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_7

    :cond_f
    const-wide/32 v10, 0x5265c00

    :goto_7
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v4, v16

    move/from16 v7, v17

    move-wide/from16 v5, v18

    move-wide/from16 v10, v22

    goto/16 :goto_2

    :cond_10
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    move/from16 v17, v7

    move-wide/from16 v22, v10

    :cond_11
    add-long v5, v18, v1

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    iput v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    return-void

    :cond_12
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    :goto_8
    return-void
.end method

.method updateStandbyBucket(ILjava/lang/String;I)V
    .locals 8

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Quota"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->setStandbyBucketLocked(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_5

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    const/4 v6, 0x5

    if-eq p3, v6, :cond_3

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    if-ne v7, v6, :cond_4

    :cond_3
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    if-eq p3, v6, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v5, p3}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    :cond_6
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    move-object v4, v5

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    :cond_7
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/StateChangedListener;->onRestrictedBucketChanged(Ljava/util/List;)V

    :cond_9
    return-void

    :cond_a
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
