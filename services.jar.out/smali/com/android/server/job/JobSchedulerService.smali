.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;,
        Lcom/android/server/job/JobSchedulerService$StandbyTracker;,
        Lcom/android/server/job/JobSchedulerService$LocalService;,
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$PendingJobComparator;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;,
        Lcom/android/server/job/JobSchedulerService$MySimpleClock;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final FREQUENT_INDEX:I = 0x2

.field public static final MAX_ALLOWED_PERIOD_MS:J = 0x757b12c00L

.field private static final MAX_JOBS_PER_APP:I = 0x96

.field static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field static final MSG_CHECK_INDIVIDUAL_JOB:I = 0x0

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_STOP_JOB:I = 0x2

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x5

.field static final MSG_UID_IDLE:I = 0x7

.field static final MSG_UID_STATE_CHANGED:I = 0x4

.field public static final NEVER_INDEX:I = 0x4

.field private static final NUM_COMPLETED_JOB_HISTORY:I = 0x14

.field private static final PERIODIC_JOB_WINDOW_BUFFER:J = 0x1b7740L

.field private static final QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_SCHEDULE_LOGGED:Ljava/lang/String; = ".schedulePersisted out-of-quota logged"

.field private static final QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG:Ljava/lang/String; = ".schedulePersisted()"

.field public static final RARE_INDEX:I = 0x3

.field public static final RESTRICTED_INDEX:I = 0x5

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field public static final WORKING_INDEX:I = 0x1

.field public static sElapsedRealtimeClock:Ljava/time/Clock;

.field public static sSystemClock:Ljava/time/Clock;

.field public static sUptimeMillisClock:Ljava/time/Clock;


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field final mBackingUpUids:Landroid/util/SparseIntArray;

.field private final mBatteryController:Lcom/android/server/job/controllers/BatteryController;

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field final mDebuggableApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field private final mIsUidActivePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field private final mJobRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/JobRestriction;",
            ">;"
        }
    .end annotation
.end field

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final mJobTimeUpdater:Ljava/lang/Runnable;

.field final mJobs:Lcom/android/server/job/JobStore;

.field private mLastCompletedJobIndex:I

.field private final mLastCompletedJobTimeElapsed:[J

.field private final mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field final mLock:Ljava/lang/Object;

.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field final mPendingJobComparator:Lcom/android/server/job/JobSchedulerService$PendingJobComparator;

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field private final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field mReadyToRock:Z

.field mReportedActive:Z

.field private final mRestrictiveControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/RestrictingController;",
            ">;"
        }
    .end annotation
.end field

.field final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field mStartedUsers:[I

.field private final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field private final mSystemGalleryPackage:Ljava/lang/String;

.field private final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPriorityOverride:Landroid/util/SparseIntArray;

.field private final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$TQG23Ovctx1aIo09D7L3AX_yNAM(Lcom/android/server/job/JobSchedulerService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted()"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted out-of-quota logged"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    sget-object v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/16 v0, 0x14

    new-array v1, v0, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$PendingJobComparator;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobComparator:Lcom/android/server/job/JobSchedulerService$PendingJobComparator;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$1;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    new-instance v2, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v3, Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    invoke-direct {v3, p1, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget v5, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-wide v6, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    const/4 v4, 0x1

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v7, p0, v6, v3}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ComponentController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    new-instance v5, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {v5, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    const v2, 0x1040027

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mSystemGalleryPackage:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JobScheduler"

    const-string v2, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mSystemGalleryPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/job/JobSchedulerService;IIII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUidLocked(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/job/JobSchedulerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUserLocked(I)V

    return-void
.end method

.method static addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I
    .locals 2

    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    add-int/lit8 p1, p1, -0x50

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    add-int/lit8 p1, p1, -0x28

    :cond_1
    :goto_0
    return p1
.end method

.method private cancelJob(IIII)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel() called by app, callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, v1

    move v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CANCEL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking replacement job "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method private cancelJobsForNonExistentUsers()V
    .locals 4

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->removeJobsOfUnlistedUsers([I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private cancelJobsForPackageAndUidLocked(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 9

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system package"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cancelJobsForUserLocked(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x7

    const-string/jumbo v8, "user removed"

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v2, p1}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-h] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v1, "JobScheduler"

    if-nez v0, :cond_1

    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComponentUsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " component not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->isAppBad(Ljava/lang/String;I)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App is bad for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " so not runnable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    xor-int/lit8 v1, v2, 0x1

    return v1
.end method

.method private isUidActive(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActiveSynced(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpInternal$3(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

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

.method static synthetic lambda$dumpInternalProto$4(ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

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

.method static synthetic lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 1

    const-string v0, ".schedulePersisted()"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    return-object v0
.end method

.method private maybeQueueReadyJobsForExecutionLocked()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    return-void
.end method

.method private queueReadyJobsForExecutionLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "queuing all ready jobs for execution:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->access$1600(Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v2, "No jobs pending."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs queued."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private static sortJobs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$6;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .locals 4

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v1

    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " standby bucket index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static standbyBucketToBucketIndex(I)I
    .locals 1

    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/16 v0, 0x28

    if-le p0, v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/16 v0, 0x14

    if-le p0, v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/16 v0, 0xa

    if-le p0, v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private stopNonReadyActiveJobsLocked()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->areDynamicConstraintsSatisfied()Z

    move-result v3

    if-nez v3, :cond_1

    nop

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v3

    const/4 v4, 0x6

    const-string v5, "cancelled due to restricted bucket"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    nop

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "cancelled due to unsatisfied constraints"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/job/restrictions/JobRestriction;->getReason()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restricted due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v4, v6}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v5, "areComponentsInPlaceLocked: "

    const-string v6, "JobScheduler"

    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exists="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " userStarted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " backingUp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " restricted due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    return v3

    :cond_5
    :goto_1
    return v3
.end method

.method public areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public cancelJobsForUid(IIILjava/lang/String;)Z
    .locals 11

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system uid"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    const/4 v7, 0x0

    move-object v5, p0

    move v8, p2

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    const/4 v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, v10}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(I)V

    move-object v6, v0

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v23, v10

    move-wide/from16 v24, v11

    move-wide v12, v13

    move-object v11, v6

    move-object v14, v7

    goto/16 :goto_18

    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_1

    :try_start_3
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v3, v8}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/IndentingPrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started users: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Registered "

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " jobs:"

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->size()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-lez v3, :cond_c

    :try_start_5
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v3}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v18, v17

    move-object/from16 v4, v18

    invoke-interface {v6, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const-string v2, "JOB #"

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x1

    invoke-virtual {v4, v8, v2, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    const-string v2, "Restricted due to:"

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    move/from16 v19, v0

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_5

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v3, v4}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-virtual {v3}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v21

    move-object/from16 v22, v3

    const-string v3, " "

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    move-object/from16 v22, v3

    :goto_5
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v3, v20

    goto :goto_4

    :cond_5
    move-object/from16 v20, v3

    goto :goto_6

    :cond_6
    move/from16 v19, v0

    move-object/from16 v20, v3

    const-string v0, " none"

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    const-string v0, "."

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Ready: "

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " (job="

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " user="

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " !restricted="

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-nez v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " !pending="

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " !active="

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " !backingup="

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " comp="

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v20, v3

    :cond_c
    if-nez v0, :cond_d

    const-string v2, "None."

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_b
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-ge v2, v3, :cond_e

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3, v8, v6}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v19, v2

    :goto_c
    :try_start_8
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const/4 v4, -0x1

    if-ge v3, v2, :cond_12

    :try_start_9
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-eq v10, v4, :cond_f

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v10, v4, :cond_11

    :cond_f
    if-nez v19, :cond_10

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Uid priority overrides:"

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_10
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_12
    if-eqz v19, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v20, v2

    :goto_d
    :try_start_a
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-ge v3, v2, :cond_16

    :try_start_b
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    if-eq v9, v4, :cond_14

    if-eq v9, v2, :cond_14

    goto :goto_e

    :cond_14
    if-nez v20, :cond_15

    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v5, "Cached UID->package map:"

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_15
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_16
    if-eqz v20, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v21, v2

    :goto_f
    :try_start_c
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ge v3, v2, :cond_1b

    :try_start_d
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-eq v10, v4, :cond_18

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-ne v10, v5, :cond_1a

    :cond_18
    if-nez v21, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v5, "Backing up uids:"

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/16 v21, 0x1

    goto :goto_10

    :cond_19
    const-string v5, ", "

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_10
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    if-eqz v21, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_1c
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v8, v10}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/IndentingPrintWriter;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v8, v10}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/IndentingPrintWriter;I)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v2, :cond_1d

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_1d
    const/4 v2, 0x0

    :try_start_10
    const-string v3, "Pending queue:"

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v3, 0x0

    move/from16 v22, v2

    :goto_11
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-ge v3, v2, :cond_20

    :try_start_11
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v6, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_12

    :cond_1e
    if-nez v22, :cond_1f

    const/16 v22, 0x1

    :cond_1f
    const-string v5, "Pending #"

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v5, 0x0

    invoke-virtual {v2, v8, v5, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    const-string v4, "Evaluated priority: "

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Tag: "

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Enq: "

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move/from16 v23, v5

    iget-wide v4, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v4, v15

    invoke-static {v4, v5, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_12
    add-int/lit8 v3, v3, 0x1

    const/4 v4, -0x1

    goto :goto_11

    :cond_20
    if-nez v22, :cond_21

    const-string v2, "None"

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_21
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Active jobs:"

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_13
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-ge v2, v3, :cond_24

    :try_start_13
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v4, :cond_22

    :try_start_14
    invoke-interface {v6, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-nez v5, :cond_22

    move/from16 v23, v10

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    goto :goto_14

    :cond_22
    :try_start_15
    const-string v5, "Slot #"

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v13, v14}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    if-eqz v4, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v5, "Evaluated priority: "

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    invoke-static {v5}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "Active at "

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move/from16 v23, v10

    move-wide/from16 v24, v11

    :try_start_16
    iget-wide v10, v4, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v10, v15

    invoke-static {v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v5, ", pending for "

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v4, Lcom/android/server/job/controllers/JobStatus;->madeActive:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move-wide/from16 v26, v13

    :try_start_17
    iget-wide v12, v4, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object v11, v6

    move-object v14, v7

    move-wide/from16 v12, v26

    goto/16 :goto_18

    :catchall_2
    move-exception v0

    move-object v11, v6

    move-wide v12, v13

    move-object v14, v7

    goto/16 :goto_18

    :cond_23
    move/from16 v23, v10

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    :goto_14
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v23

    move-wide/from16 v11, v24

    move-wide/from16 v13, v26

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move/from16 v23, v10

    move-wide/from16 v24, v11

    move-object v11, v6

    move-wide v12, v13

    move-object v14, v7

    goto/16 :goto_18

    :cond_24
    move/from16 v23, v10

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    :try_start_18
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v2, 0x0

    const-string v3, "Recently completed jobs:"

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    const/4 v3, 0x1

    move v10, v2

    :goto_15
    const/16 v2, 0x14

    if-gt v3, v2, :cond_27

    :try_start_19
    iget v4, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    rem-int/2addr v4, v2

    move v2, v4

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    aget-object v4, v4, v2

    if-eqz v4, :cond_26

    invoke-interface {v6, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    move-wide/from16 v12, v26

    const/4 v11, 0x1

    goto :goto_16

    :cond_25
    const/4 v5, 0x1

    iget-object v10, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    aget-wide v10, v10, v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-wide/from16 v12, v26

    :try_start_1a
    invoke-static {v10, v11, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v11, 0x1

    invoke-virtual {v4, v8, v11, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v10, v5

    goto :goto_16

    :cond_26
    move-wide/from16 v12, v26

    const/4 v11, 0x1

    :goto_16
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v26, v12

    goto :goto_15

    :catchall_4
    move-exception v0

    move-wide/from16 v12, v26

    move-object v11, v6

    move-object v14, v7

    goto/16 :goto_18

    :cond_27
    move-wide/from16 v12, v26

    if-nez v10, :cond_28

    const-string v2, "None"

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_17

    :catchall_5
    move-exception v0

    move-object v11, v6

    move-object v14, v7

    goto :goto_18

    :cond_28
    :goto_17
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    const/4 v2, -0x1

    if-ne v9, v2, :cond_29

    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "mReadyToRock="

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v2, "mReportedActive="

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :cond_29
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    move-object/from16 v3, p1

    move-wide/from16 v4, v24

    move-object v11, v6

    move-object v14, v7

    move-wide v6, v12

    :try_start_1e
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "PersistStats: "

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v14
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void

    :catchall_6
    move-exception v0

    move-object v11, v6

    move-object v14, v7

    goto :goto_18

    :catchall_7
    move-exception v0

    move-object v11, v6

    move-object v14, v7

    move-wide/from16 v12, v26

    goto :goto_18

    :catchall_8
    move-exception v0

    move/from16 v23, v10

    move-wide/from16 v24, v11

    move-wide v12, v13

    move-object v11, v6

    move-object v14, v7

    :goto_18
    :try_start_1f
    monitor-exit v14
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_18
.end method

.method dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .locals 35

    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, v12}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;-><init>(I)V

    move-object v10, v0

    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const-wide v5, 0x10b00000001L

    :try_start_0
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v7, v11}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move/from16 v12, p2

    move-object v14, v8

    move-object v13, v10

    goto/16 :goto_10

    :cond_0
    :try_start_2
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    :try_start_3
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v7, v11}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v7, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    const/16 v20, 0x0

    move/from16 v9, v20

    :goto_2
    if-ge v9, v7, :cond_2

    :try_start_5
    aget v21, v0, v9

    move/from16 v22, v21

    const-wide v5, 0x20500000002L

    move-object/from16 v21, v0

    move/from16 v0, v22

    invoke-virtual {v11, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v21

    const-wide v5, 0x10b00000001L

    goto :goto_2

    :cond_2
    :try_start_6
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-wide v5, 0x10b00000016L

    invoke-virtual {v0, v11, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    if-lez v0, :cond_8

    :try_start_7
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    move-object v9, v7

    const-wide v5, 0x20b00000003L

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move-wide/from16 v25, v5

    const-wide v5, 0x10b00000001L

    invoke-virtual {v9, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    const-wide v22, 0x10b00000002L

    const/4 v7, 0x1

    move-wide/from16 v27, v3

    move-object v3, v9

    move-object v4, v11

    move/from16 v24, v12

    move-wide/from16 v29, v13

    const-wide v12, 0x1080000000bL

    move-wide/from16 v5, v22

    move-object v14, v8

    move-object v12, v9

    move-wide v8, v15

    :try_start_8
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    const-wide v3, 0x1080000000aL

    invoke-virtual {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000003L

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000004L

    invoke-virtual {v1, v12}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    nop

    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    if-eqz v3, :cond_4

    move/from16 v3, v19

    goto :goto_4

    :cond_4
    move/from16 v3, v20

    :goto_4
    const-wide v4, 0x1080000000bL

    invoke-virtual {v11, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000005L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000006L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v5, v12}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000007L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_5

    move/from16 v5, v19

    goto :goto_5

    :cond_5
    move/from16 v5, v20

    :goto_5
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000008L

    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/restrictions/JobRestriction;

    const-wide v5, 0x20b0000000cL

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10e00000001L

    invoke-virtual {v4}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v9

    invoke-virtual {v11, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10800000002L

    invoke-virtual {v4, v12}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    invoke-virtual {v11, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_6

    :cond_6
    move-wide/from16 v3, v25

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v8, v14

    move/from16 v12, v24

    move-wide/from16 v3, v27

    move-wide/from16 v13, v29

    goto/16 :goto_3

    :cond_7
    move-wide/from16 v27, v3

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move-object v14, v8

    goto :goto_7

    :catchall_1
    move-exception v0

    move-wide/from16 v29, v13

    move-object v14, v8

    move-object v13, v10

    move/from16 v24, v12

    move/from16 v12, p2

    goto/16 :goto_10

    :cond_8
    move-wide/from16 v27, v3

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move-object v14, v8

    :goto_7
    :try_start_9
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v3, :cond_9

    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v11, v4, v5, v10}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move/from16 v12, p2

    move-object v13, v10

    goto/16 :goto_10

    :cond_9
    const/4 v0, 0x0

    :goto_9
    :try_start_b
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    const/4 v12, -0x1

    if-ge v0, v3, :cond_c

    :try_start_c
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v13, v24

    if-eq v13, v12, :cond_a

    :try_start_d
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v13, v4, :cond_b

    :cond_a
    const-wide v4, 0x20b00000005L

    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    invoke-virtual {v11, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x11100000002L

    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v11, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v24, v13

    goto :goto_9

    :catchall_3
    move-exception v0

    move/from16 v12, p2

    move/from16 v24, v13

    move-object v13, v10

    goto/16 :goto_10

    :catchall_4
    move-exception v0

    move/from16 v12, p2

    move-object v13, v10

    goto/16 :goto_10

    :cond_c
    move/from16 v13, v24

    const/4 v0, 0x0

    :goto_a
    :try_start_e
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-ge v0, v3, :cond_f

    :try_start_f
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v13, v12, :cond_d

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v13, v4, :cond_e

    :cond_d
    const-wide v4, 0x20500000006L

    invoke-virtual {v11, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    :try_start_10
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v0, v11, v3, v4, v13}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v0, v11, v3, v4, v13}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-eqz v3, :cond_10

    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    move-object v8, v3

    const-wide v3, 0x20b00000009L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v5, v3

    const-wide v3, 0x10b00000001L

    invoke-virtual {v8, v11, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const-wide v19, 0x10b00000002L

    const/4 v7, 0x0

    move/from16 v24, v13

    move-wide v12, v3

    move-object v3, v8

    move-object v4, v11

    move-wide v12, v5

    move-wide/from16 v5, v19

    move-object/from16 v19, v0

    move-object v0, v8

    move-wide v8, v15

    :try_start_12
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    const-wide v3, 0x11100000003L

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000004L

    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object/from16 v0, v19

    move/from16 v13, v24

    const/4 v12, -0x1

    goto :goto_b

    :catchall_5
    move-exception v0

    move/from16 v24, v13

    move/from16 v12, p2

    move-object v13, v10

    goto/16 :goto_10

    :cond_10
    move/from16 v24, v13

    :try_start_13
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-eqz v3, :cond_13

    :try_start_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    move-object v12, v3

    const-wide v3, 0x20b0000000aL

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v8, v3

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    move-object v13, v3

    if-nez v13, :cond_12

    const-wide v3, 0x10b00000001L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move-wide v3, v5

    iget-wide v5, v12, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    sub-long v5, v15, v5

    move-wide/from16 v22, v8

    const-wide v7, 0x10300000001L

    invoke-virtual {v11, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v5, v12, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v5, :cond_11

    const-wide v5, 0x10900000002L

    iget-object v7, v12, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v11, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_11
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v31, v22

    const-wide v19, 0x10b00000001L

    goto :goto_d

    :cond_12
    move-wide/from16 v22, v8

    const-wide v3, 0x10b00000002L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v8, v3

    const-wide v5, 0x10b00000001L

    invoke-virtual {v13, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v3, 0x10300000002L

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v19

    sub-long v5, v15, v19

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000003L

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v5

    sub-long/2addr v5, v15

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10b00000004L

    const/4 v7, 0x0

    move-object v3, v13

    move-object v4, v11

    const-wide v19, 0x10b00000001L

    move-wide/from16 v33, v8

    move-wide/from16 v31, v22

    move-wide v8, v15

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    const-wide v3, 0x11100000005L

    invoke-virtual {v1, v13}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000006L

    iget-wide v5, v13, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000007L

    iget-wide v5, v13, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v7, v13, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v5, v7

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v3, v33

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_d
    move-wide/from16 v3, v31

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_c

    :cond_13
    move/from16 v12, p2

    const/4 v0, -0x1

    if-ne v12, v0, :cond_14

    :try_start_15
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-wide v3, 0x1080000000bL

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v13, v10

    goto :goto_10

    :cond_14
    :goto_e
    :try_start_16
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    const-wide v5, 0x10b00000014L

    move-object v4, v11

    move-wide/from16 v7, v29

    move-object v13, v10

    move-wide v9, v15

    :try_start_17
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    const-wide v3, 0x10b00000015L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    monitor-exit v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_7
    move-exception v0

    goto :goto_f

    :catchall_8
    move-exception v0

    move/from16 v12, p2

    move/from16 v24, v13

    move-object v13, v10

    goto :goto_10

    :catchall_9
    move-exception v0

    move/from16 v12, p2

    :goto_f
    move-object v13, v10

    goto :goto_10

    :catchall_a
    move-exception v0

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move/from16 v12, p2

    move-object v14, v8

    move-object v13, v10

    :goto_10
    :try_start_18
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_10
.end method

.method evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2
.end method

.method executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .locals 6

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeCancelCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    nop

    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v1, -0x3e8

    return v1

    :cond_1
    const/16 v2, 0xd

    const-string v3, " in user "

    if-nez p4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling all jobs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "cancel shell command for package"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "No matching jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v3, 0x7d0

    invoke-direct {p0, v0, p5, v3, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIII)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "No matching job found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1
.end method

.method executeRunCommand(Ljava/lang/String;IIZZ)I
    .locals 6

    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRunCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v0, -0x3e8

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    :cond_2
    const/4 v4, 0x1

    if-eqz p5, :cond_3

    const/4 v5, 0x3

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    :goto_1
    iput v5, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_2
    if-ltz v5, :cond_5

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v4

    if-nez v4, :cond_6

    iput v0, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/16 v4, -0x3ea

    monitor-exit v2

    return v4

    :cond_6
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    :goto_3
    return v0
.end method

.method executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .locals 10

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeTimeoutCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    const-string/jumbo v9, "shell"

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/JobServiceContext;->timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    const-string v5, "Timing out: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "No matching executing jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatteryCharging()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatteryNotLow()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatterySeq()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object v0
.end method

.method getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-interface {v1, p2, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-gez v1, :cond_1

    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, -0x3e8

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-job-state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v3, :cond_3

    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    :cond_3
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "pending"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_4
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v5, v3}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const/4 v4, 0x1

    const-string v5, "active"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_7

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const/4 v4, 0x1

    const-string/jumbo v5, "user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v4, :cond_9

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const/4 v4, 0x1

    const-string/jumbo v5, "source-user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_c

    if-eqz v4, :cond_b

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    const/4 v4, 0x1

    const-string v5, "backing-up"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    const/4 v5, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/high16 v8, 0x10000000

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_1

    :cond_d
    move v6, v0

    :goto_1
    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v6

    :goto_2
    if-nez v5, :cond_f

    if-eqz v4, :cond_e

    :try_start_3
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    const/4 v4, 0x1

    const-string/jumbo v6, "no-component"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v4, :cond_10

    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_10
    const/4 v4, 0x1

    const-string/jumbo v6, "ready"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    if-nez v4, :cond_12

    const-string/jumbo v6, "waiting"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    :goto_3
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-wide/32 v3, 0x493e0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "JobScheduler"

    const-string v8, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    move-wide v7, v4

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_0

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v7, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    :cond_0
    int-to-long v9, v6

    mul-long/2addr v7, v9

    goto :goto_1

    :cond_1
    :goto_0
    :pswitch_1
    move-wide v7, v4

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v7, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    :cond_2
    long-to-float v9, v7

    add-int/lit8 v10, v6, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->scalb(FI)F

    move-result v9

    float-to-long v9, v9

    move-wide v7, v9

    :goto_1
    const-wide/32 v9, 0x112a880

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    new-instance v20, Lcom/android/server/job/controllers/JobStatus;

    add-long v9, v1, v18

    const-wide v11, 0x7fffffffffffffffL

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v14

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v16

    move-object/from16 v7, v20

    move-object/from16 v8, p1

    move v13, v6

    invoke-direct/range {v7 .. v17}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_3

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/StateController;

    move-object/from16 v10, p1

    invoke-virtual {v9, v7, v10}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v10, p1

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 39

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    const-string v11, "JobScheduler"

    if-ltz v10, :cond_0

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v8, v12

    if-nez v10, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v0

    :cond_1
    move-wide v12, v8

    sub-long v14, v0, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v10, v0, v12

    move-wide/from16 v16, v6

    if-lez v10, :cond_6

    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v6, "Periodic job ran after its intended window."

    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    div-long v6, v14, v2

    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    cmp-long v22, v2, v4

    if-eqz v22, :cond_4

    sub-long v22, v2, v4

    const-wide/16 v24, 0x2

    move-wide/from16 v26, v8

    div-long v8, v22, v24

    move-wide/from16 v22, v4

    const-wide/32 v4, 0x1b7740

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    cmp-long v4, v14, v4

    if-lez v4, :cond_5

    if-eqz v10, :cond_3

    const-string v4, "Custom flex job ran too close to next window."

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-long v6, v6, v20

    goto :goto_0

    :cond_4
    move-wide/from16 v22, v4

    move-wide/from16 v26, v8

    :cond_5
    :goto_0
    mul-long v4, v2, v6

    add-long/2addr v4, v12

    move-wide/from16 v6, v16

    goto :goto_1

    :cond_6
    move-wide/from16 v22, v4

    move-wide/from16 v26, v8

    add-long v4, v12, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v8, v14, v6

    if-gez v8, :cond_7

    const-wide/16 v8, 0x6

    div-long v18, v2, v8

    cmp-long v10, v14, v18

    if-gez v10, :cond_7

    div-long v8, v2, v8

    sub-long/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_7
    move-wide/from16 v6, v16

    :goto_1
    cmp-long v8, v4, v0

    if-gez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/job/controllers/JobStatus;

    add-long v9, v0, v2

    sub-long v30, v9, v22

    add-long v32, v0, v2

    const/16 v34, 0x0

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v35

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v37

    move-object/from16 v28, v8

    move-object/from16 v29, p1

    invoke-direct/range {v28 .. v38}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    return-object v8

    :cond_8
    sub-long v8, v2, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    sub-long v8, v4, v8

    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v22, v0

    const-string v0, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    move-wide/from16 v18, v2

    div-long v2, v8, v0

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v4, v0

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]s"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    move-wide/from16 v22, v0

    move-wide/from16 v18, v2

    :goto_2
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    const/16 v34, 0x0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v35

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v37

    move-object/from16 v28, v0

    move-object/from16 v29, p1

    move-wide/from16 v30, v8

    move-wide/from16 v32, v4

    invoke-direct/range {v28 .. v38}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    return-object v0
.end method

.method getStorageNotLow()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStorageSeq()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestableContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isChainedAttributionEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    return v0
.end method

.method isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string/jumbo v2, "isReadyToBeExecutedLocked: "

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ready="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    NOT READY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4

    :cond_2
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v5, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    const/4 v8, 0x1

    if-ltz v7, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    move v7, v4

    :goto_0
    if-eqz v1, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " exists="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " userStarted="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " backingUp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v9

    if-eqz v9, :cond_6

    return v4

    :cond_6
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz p2, :cond_7

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v10, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_1

    :cond_7
    move v8, v4

    :goto_1
    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v9, :cond_a

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    return v1

    :cond_a
    :goto_2
    return v4

    :cond_b
    :goto_3
    return v4
.end method

.method public synthetic lambda$new$1$JobSchedulerService()V
    .locals 13

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    move-object v12, v6

    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "JobScheduler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  replacing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v9, 0xe

    const/16 v10, 0x9

    const-string v11, "deferred rtc calculation"

    move-object v6, p0

    move-object v7, v5

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public synthetic lambda$onBootPhase$2$JobSchedulerService(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method maybeRunPendingJobsLocked()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method noteJobsNonpending(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method noteJobsPending(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 11

    const/4 v0, 0x1

    const/16 v1, 0x1f4

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start()V

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    goto :goto_0

    :cond_0
    const-class v1, Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppStateTrackerImpl;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface {v3, v4, v5, v7, v6}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_2
    if-ltz v3, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    goto :goto_4

    :cond_2
    const/16 v1, 0x258

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-class v2, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleInternal;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v10, Lcom/android/server/job/JobServiceContext;

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_4
    nop

    :goto_5
    return-void
.end method

.method public onControllerStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cancelled due to doze"

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v5, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v3, :cond_4

    iput-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-interface {v1, v2}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
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

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IZ)V
    .locals 6

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reschedule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    iget v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    aput-object p1, v2, v3

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    iget v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/4 v2, 0x7

    if-eq p2, v2, :cond_a

    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->disallowRunInBatterySaverAndDoze()V

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_5

    const-string v0, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    return-void

    :cond_7
    const-string v0, "Unable to regrant job permissions for "

    if-eqz v2, :cond_8

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0, v3, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void

    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method public onRestrictedBucketChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "JobScheduler"

    const-string/jumbo v2, "onRestrictedBucketChanged called with no jobs"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method reportActiveLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v1, v0, :cond_3

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    :cond_3
    return-void
.end method

.method reportAppUsage(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method resetExecutionQuota(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetScheduleQuota()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->clear()V

    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v15, p3

    move-object/from16 v14, p4

    move/from16 v13, p5

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    const/16 v29, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-eqz v14, :cond_0

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    if-nez v14, :cond_1

    move-object v0, v12

    goto :goto_0

    :cond_1
    move-object v0, v14

    :goto_0
    move-object v2, v0

    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted()"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has called schedule() too many times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v3, 0x4

    invoke-interface {v0, v2, v13, v3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v0, :cond_7

    iget-object v3, v7, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v1, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, v7, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move/from16 v5, v29

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_2
    monitor-exit v3

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_2
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/os/LimitExceededException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "schedule()/enqueue() called more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->getLimit(Lcom/android/server/utils/quota/Category;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times in the past "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms. See the documentation for more information."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_3
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted()"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_9
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v15, v12}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not scheduling job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- package not allowed to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    iget-object v11, v7, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_4
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_b

    if-eqz v0, :cond_b

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v9}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    iget-object v1, v7, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v29

    :catchall_1
    move-exception v0

    move-object v1, v11

    move-object v6, v12

    goto/16 :goto_7

    :cond_b
    move-object/from16 v10, p6

    :try_start_6
    invoke-static {v8, v15, v14, v13, v10}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    move-object v6, v2

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_c

    :try_start_7
    iget-object v2, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_c

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return v1

    :cond_c
    :try_start_8
    iget-object v1, v7, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v6, v1}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_d

    :try_start_9
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCHEDULE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-nez v14, :cond_f

    iget-object v1, v7, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v15}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v1

    const/16 v2, 0x96

    if-gt v1, v2, :cond_e

    goto :goto_4

    :cond_e
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many jobs for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Apps may not schedule more than 150 distinct jobs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_f
    :goto_4
    :try_start_a
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_b
    const-string/jumbo v16, "job rescheduled by app"

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v6

    move-object v15, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :cond_10
    move-object v15, v6

    const/4 v1, 0x0

    :try_start_c
    invoke-direct {v7, v15, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_5
    if-eqz v9, :cond_11

    :try_start_d
    invoke-virtual {v15, v9}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_11
    const/16 v1, 0x8

    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v16

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v17

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v18

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v19

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v20

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v21

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v22

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v23

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v24

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v25

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v26
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/16 v27, 0x0

    const/16 v28, 0x0

    move v10, v1

    move-object v1, v11

    move/from16 v11, p3

    move-object v6, v12

    move-object v12, v2

    move-object v13, v3

    move v14, v4

    move-object v2, v15

    move v15, v5

    :try_start_f
    invoke-static/range {v10 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZZZI)V

    invoke-virtual {v7, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v7, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v3, v7, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    iget-object v4, v7, Lcom/android/server/job/JobSchedulerService;->mPendingJobComparator:Lcom/android/server/job/JobSchedulerService$PendingJobComparator;

    invoke-static {v3, v2, v4}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    goto :goto_6

    :cond_12
    invoke-virtual {v7, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    :goto_6
    monitor-exit v1

    return v29

    :catchall_2
    move-exception v0

    move-object v1, v11

    move-object v6, v12

    :goto_7
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7
.end method

.method setMonitorBattery(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->setMonitorBatteryLocked(Z)V

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

.method triggerDockState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method updateQuotaTracker()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    return-void
.end method

.method updateUidState(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x28

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-gt p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x23

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-gt p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x1e

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v1, v2, :cond_4

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " priority changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/job/controllers/StateController;->onUidPriorityChangedLocked(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
