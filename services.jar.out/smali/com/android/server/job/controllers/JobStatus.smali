.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field static final CONSTRAINTS_OF_INTEREST:I = -0x6bfffff1

.field static final CONSTRAINT_BACKGROUND_NOT_RESTRICTED:I = 0x400000

.field static final CONSTRAINT_BATTERY_NOT_LOW:I = 0x2

.field static final CONSTRAINT_CHARGING:I = 0x1

.field static final CONSTRAINT_CONNECTIVITY:I = 0x10000000

.field static final CONSTRAINT_CONTENT_TRIGGER:I = 0x4000000

.field static final CONSTRAINT_DEADLINE:I = 0x40000000

.field static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x2000000

.field static final CONSTRAINT_IDLE:I = 0x4

.field static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field static final CONSTRAINT_TIMING_DELAY:I = -0x80000000

.field static final CONSTRAINT_WITHIN_EXPEDITED_QUOTA:I = 0x800000

.field static final CONSTRAINT_WITHIN_QUOTA:I = 0x1000000

.field static final DEBUG:Z

.field static final DEBUG_PREPARE:Z = true

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field private static final DYNAMIC_EXPEDITED_DEFERRAL_CONSTRAINTS:I = 0x2400000

.field private static final DYNAMIC_RESTRICTED_CONSTRAINTS:I = 0x10000007

.field public static final INTERNAL_FLAG_HAS_FOREGROUND_EXEMPTION:I = 0x1

.field private static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field private static final NUM_CONSTRAINT_CHANGE_HISTORY:I = 0xa

.field public static final OVERRIDE_FULL:I = 0x3

.field public static final OVERRIDE_NONE:I = 0x0

.field public static final OVERRIDE_SOFT:I = 0x2

.field public static final OVERRIDE_SORTING:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = -0x7ffffff1

.field private static final STATSD_CONSTRAINTS_TO_LOG:I = -0x3a7ffffc

.field private static final STATS_LOG_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "JobScheduler.JobStatus"

.field public static final TRACKING_BATTERY:I = 0x1

.field public static final TRACKING_CONNECTIVITY:I = 0x2

.field public static final TRACKING_CONTENT:I = 0x4

.field public static final TRACKING_IDLE:I = 0x8

.field public static final TRACKING_QUOTA:I = 0x40

.field public static final TRACKING_STORAGE:I = 0x10

.field public static final TRACKING_TIME:I = 0x20


# instance fields
.field final batteryName:Ljava/lang/String;

.field final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public dozeWhitelisted:Z

.field private final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedPriority:I

.field private final latestRunTimeElapsedMillis:J

.field private mConstraintChangeHistoryIndex:I

.field private final mConstraintStatusHistory:[I

.field private final mConstraintUpdatedTimesElapsed:[J

.field private mDynamicConstraints:I

.field private mFirstForceBatchedTimeElapsed:J

.field private final mHasMediaBackupExemption:Z

.field private mInternalFlags:I

.field private mIsUserBgRestricted:Z

.field private mLastFailedRunTime:J

.field private mLastSuccessfulRunTime:J

.field private mLoggedBucketMismatch:Z

.field private mOriginalLatestRunTimeElapsedMillis:J

.field private mPersistedUtcTimes:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyDeadlineSatisfied:Z

.field private mReadyDynamicSatisfied:Z

.field private mReadyNotDozing:Z

.field private mReadyNotRestrictedInBg:Z

.field private mReadyWithinExpeditedQuota:Z

.field private mReadyWithinQuota:Z

.field private mReasonReadyToUnready:I

.field private final mRequiredConstraintsOfInterest:I

.field private mSatisfiedConstraintsOfInterest:I

.field private mTotalNetworkDownloadBytes:J

.field private mTotalNetworkUploadBytes:J

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field private final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field final requiredConstraints:I

.field satisfiedConstraints:I

.field public serviceInfo:Landroid/content/pm/ServiceInfo;

.field final sourcePackageName:Ljava/lang/String;

.field final sourceTag:Ljava/lang/String;

.field final sourceUid:I

.field final sourceUserId:I

.field private standbyBucket:I

.field public startedAsExpeditedJob:Z

.field final tag:Ljava/lang/String;

.field private trackingControllers:I

.field public uidActive:Z

.field private unpreparedPoint:Ljava/lang/Throwable;

.field private uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field private whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    iput-boolean v12, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    const/4 v13, 0x1

    iput v13, v1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    const/16 v0, 0xa

    new-array v14, v0, [J

    iput-object v14, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    const-wide/16 v14, -0x1

    iput-wide v14, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    iput-wide v14, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iput v6, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    const/4 v14, -0x1

    const/4 v15, -0x1

    if-eq v5, v15, :cond_0

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v4, v12, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    if-ne v14, v15, :cond_1

    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    move-object/from16 v11, p6

    goto :goto_1

    :cond_1
    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iput v5, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iput-object v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    :goto_1
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "*job*/"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    iput-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    iput-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    iput-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    move/from16 v13, p7

    iput v13, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v16

    if-eqz v16, :cond_3

    const/high16 v16, 0x10000000

    or-int v15, v15, v16

    const/4 v0, 0x1

    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_4

    const/high16 v16, -0x80000000

    or-int v15, v15, v16

    :cond_4
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v16, v9, v16

    if-eqz v16, :cond_5

    const/high16 v16, 0x40000000    # 2.0f

    or-int v15, v15, v16

    :cond_5
    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v17

    if-eqz v17, :cond_7

    const/high16 v17, 0x4000000

    or-int v15, v15, v17

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v12

    array-length v3, v12

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    aget-object v18, v12, v4

    move/from16 v19, v3

    sget-object v3, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, p4

    move/from16 v3, v19

    goto :goto_3

    :cond_7
    :goto_4
    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v3, -0x6bfffff1

    and-int/2addr v3, v15

    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    move/from16 v3, p17

    invoke-direct {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    const/4 v4, 0x5

    if-ne v6, v4, :cond_8

    const v4, 0x10000007

    invoke-direct {v1, v4}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    :goto_5
    move-wide/from16 v4, p12

    iput-wide v4, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    move-wide/from16 v3, p14

    iput-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move/from16 v5, p16

    iput v5, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v12

    if-eqz v12, :cond_9

    new-instance v12, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v12, v2}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkRequest$Builder;-><init>(Landroid/net/NetworkRequest;)V

    new-instance v3, Landroid/util/Range;

    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v12}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    goto :goto_6

    :cond_9
    move-object/from16 v3, p1

    :goto_6
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz v16, :cond_a

    if-eqz v0, :cond_a

    iget-object v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/server/job/JobSchedulerInternal;->getMediaBackupPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v12, 0x1

    goto :goto_7

    :cond_a
    const/4 v12, 0x0

    :goto_7
    iput-boolean v12, v1, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "JJJJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p16

    move/from16 v18, p17

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "JobScheduler.JobStatus"

    const-string v3, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v17

    move-object/from16 v19, v1

    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move/from16 v18, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "JobScheduler.JobStatus"

    const-string v4, "Cloning job with persisted run times"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move/from16 v8, p6

    move-wide/from16 v13, p7

    move-wide/from16 v15, p9

    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v17

    move-object/from16 v19, v1

    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move/from16 v18, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    return-void
.end method

.method private addDynamicConstraints(I)V
    .locals 2

    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.JobStatus"

    const-string v1, "Tried to set quota as a dynamic constraint"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x1000001

    and-int/2addr p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, -0x10000001

    and-int/2addr p1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, -0x4000001

    and-int/2addr p1, v0

    :cond_2
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v1, v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method static bucketName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "RESTRICTED"

    return-object v0

    :pswitch_1
    const-string v0, "NEVER"

    return-object v0

    :pswitch_2
    const-string v0, "RARE"

    return-object v0

    :pswitch_3
    const-string v0, "FREQUENT"

    return-object v0

    :pswitch_4
    const-string v0, "WORKING_SET"

    return-object v0

    :pswitch_5
    const-string v0, "ACTIVE"

    return-object v0

    nop

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

.method private constraintToStopReason(I)I
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported constraint ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") --stop reason mapping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x7

    return v0

    :sswitch_1
    return v0

    :sswitch_2
    const/16 v0, 0xa

    return v0

    :sswitch_3
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    return v0

    :cond_0
    return v0

    :sswitch_4
    const/16 v0, 0x9

    return v0

    :sswitch_5
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    return v0

    :cond_1
    return v1

    :sswitch_6
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    return v1

    :sswitch_7
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
        0x400000 -> :sswitch_3
        0x800000 -> :sswitch_2
        0x1000000 -> :sswitch_2
        0x2000000 -> :sswitch_1
        0x10000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 27

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v4, v0, v2

    nop

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long v2, v4, v6

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_1

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    if-eqz p2, :cond_3

    move-object/from16 v6, p2

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v14, v6

    move/from16 v15, p3

    invoke-static {v14, v15, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v24

    move/from16 v11, v24

    new-instance v25, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v6, v25

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    move-object/from16 v26, v14

    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v6 .. v23}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    return-object v25
.end method

.method private dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, ": #"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo v0, "x "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "URI grants:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v0, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method private dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .locals 2

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method private formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .locals 2

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method private static formatTime(J)Ljava/lang/CharSequence;
    .locals 1

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getProtoConstraint(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x5

    return v0

    :sswitch_1
    const/4 v0, 0x7

    return v0

    :sswitch_2
    const/16 v0, 0x8

    return v0

    :sswitch_3
    const/16 v0, 0x9

    return v0

    :sswitch_4
    const/16 v0, 0xa

    return v0

    :sswitch_5
    const/16 v0, 0xb

    return v0

    :sswitch_6
    const/4 v0, 0x3

    return v0

    :sswitch_7
    const/4 v0, 0x6

    return v0

    :sswitch_8
    const/4 v0, 0x2

    return v0

    :sswitch_9
    const/4 v0, 0x1

    return v0

    :sswitch_a
    const/4 v0, 0x4

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
        0x400000 -> :sswitch_5
        0x1000000 -> :sswitch_4
        0x2000000 -> :sswitch_3
        0x4000000 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private hasConstraint(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr v0, p1

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

.method private isConstraintsSatisfied(I)Z
    .locals 4

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    move v2, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v3, -0x7ffffff1

    and-int/2addr v0, v3

    or-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int v3, v2, v0

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isReady(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    nop

    :goto_0
    return v1
.end method

.method private readinessStatusWithConstraint(IZ)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    if-eqz p2, :cond_0

    or-int/2addr v1, p1

    goto :goto_0

    :sswitch_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    goto :goto_2

    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    goto :goto_2

    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_2

    :sswitch_3
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinExpeditedQuota:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinExpeditedQuota:Z

    goto :goto_2

    :sswitch_4
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    goto :goto_2

    :cond_0
    not-int v4, p1

    and-int/2addr v1, v4

    :goto_0
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v4, :cond_1

    and-int v5, v1, v4

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v4

    sparse-switch p1, :sswitch_data_1

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v5, :cond_2

    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v6, v5

    if-ne v5, v6, :cond_2

    goto :goto_3

    :sswitch_5
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    goto :goto_4

    :sswitch_6
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    goto :goto_4

    :sswitch_7
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_4

    :sswitch_8
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinExpeditedQuota:Z

    goto :goto_4

    :sswitch_9
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    goto :goto_4

    :cond_2
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    :goto_4
    return v4

    :sswitch_data_0
    .sparse-switch
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_3
        0x1000000 -> :sswitch_2
        0x2000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x400000 -> :sswitch_9
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_7
        0x2000000 -> :sswitch_6
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private removeDynamicConstraints(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v1, v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method private static ungrantWorkItem(Landroid/app/job/JobWorkItem;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    :cond_0
    return-void
.end method

.method private static ungrantWorkList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateEstimatedNetworkBytesLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addInternalFlags(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return-void
.end method

.method public areDynamicConstraintsSatisfied()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return v0
.end method

.method canRunInBatterySaver()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public canRunInDoze()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public clearPersistedUtcTimes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-void
.end method

.method clearTrackingController(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeWorkLocked(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public disallowRunInBatterySaverAndDoze()V
    .locals 1

    const/high16 v0, 0x2400000

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;ZJ)V
    .locals 11

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source: uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " user="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0x20

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_14

    const-string v4, "JobInfo:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v4, "Service: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "PERIODIC: interval="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " flex="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "PERSISTED"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Priority: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-static {v4}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Flags: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Internal flags: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_4

    const-string v4, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_5
    const-string v4, "Requires: charging="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v4, " batteryNotLow="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v4, " deviceIdle="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, "Trigger content URIs:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-ltz v4, :cond_7

    const-string v4, "Trigger update delay: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_7
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-ltz v4, :cond_8

    const-string v4, "Trigger max delay: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_8
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "Extras: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "Transient extras: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "Clip data: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_c

    const-string v4, "Granted URI permissions:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v4, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    :cond_c
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "Network type: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    const-string v4, "Network download bytes: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {p1, v4, v5}, Landroid/util/IndentingPrintWriter;->println(J)V

    :cond_e
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_f

    const-string v4, "Network upload bytes: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {p1, v4, v5}, Landroid/util/IndentingPrintWriter;->println(J)V

    :cond_f
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_10

    const-string v4, "Minimum latency: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_10
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_11

    const-string v4, "Max execution delay: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_11
    const-string v4, "Backoff: policy="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " initial="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "Has early constraint"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "Has late constraint"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_14
    const-string v4, "Required constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Dynamic constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_19

    const-string v4, "Satisfied constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Unsatisfied constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, v5

    and-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Constraint history:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0xa

    if-ge v4, v5, :cond_16

    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    add-int/2addr v6, v4

    rem-int/2addr v6, v5

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aget-wide v7, v5, v6

    cmp-long v7, v7, v1

    if-nez v7, :cond_15

    goto :goto_2

    :cond_15
    aget-wide v7, v5, v6

    invoke-static {v7, v8, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v5, " ="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aget v5, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_16
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v4, :cond_17

    const-string v4, "Doze whitelisted: true"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_17
    iget-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v4, :cond_18

    const-string v4, "Uid: active"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_18
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "Is exempted from app standby"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_19
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v4, :cond_21

    const-string v4, "Tracking:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_1a

    const-string v4, " BATTERY"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1b

    const-string v4, " CONNECTIVITY"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1b
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1c

    const-string v4, " CONTENT"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1c
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1d

    const-string v4, " IDLE"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1d
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1e

    const-string v4, " STORAGE"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1e
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1f

    const-string v0, " TIME"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1f
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_20

    const-string v0, " QUOTA"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_21
    const-string v0, "Implicit constraints:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "readyNotDozing: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "readyNotRestrictedInBg: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "readyDeadlineSatisfied: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_22
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v0, :cond_23

    const-string/jumbo v0, "readyDynamicSatisfied: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_23
    const-string/jumbo v0, "readyComponentEnabled: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_24

    goto :goto_3

    :cond_24
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_25

    const-string/jumbo v0, "readyWithinExpeditedQuota: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinExpeditedQuota:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " (started as EJ: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_27

    const-string v0, "Changed authorities:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_26
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_27
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_29

    const-string v0, "Changed URIs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_5
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_28
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_29
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_2a

    const-string v0, "Network: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_2a
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    const-string v0, "Pending work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2b
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    const-string v0, "Executing work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2c
    const-string v0, "Standby bucket: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2d

    const-string v0, "Deferred since: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2d
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2e

    const-string v0, "Time since first force batch attempt: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Enqueue time: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Run time: earliest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    const-string v0, ", latest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    const-string v0, ", original latest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_2f

    const-string v0, "Num failures: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_2f
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_30

    const-string v0, "Last successful run: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-static {v3, v4}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_30
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_31

    const-string v0, "Last failed run: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    const-wide v9, 0x10900000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x1080000000aL

    const-wide v11, 0x10800000002L

    if-eqz p4, :cond_a

    const-wide v13, 0x10b00000006L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    const-wide v7, 0x10b00000001L

    invoke-virtual {v4, v1, v7, v8}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10300000003L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v11

    invoke-virtual {v1, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000004L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v11

    invoke-virtual {v1, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10800000005L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x11100000006L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10500000007L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000018L

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10800000008L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000009L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_1

    const-wide v7, 0x20b0000000bL

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v12

    invoke-virtual {v1, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v11}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide v9, 0x10900000002L

    invoke-virtual {v1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-wide v9, 0x10900000002L

    :goto_1
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    const-wide v5, 0x10500000001L

    const-wide v9, 0x1080000000aL

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    const-wide v4, 0x1030000000cL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_2
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    const-wide v4, 0x1030000000dL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_5
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_6
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_7

    const-wide v5, 0x10b00000011L

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_7
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_8

    const-wide v8, 0x10300000019L

    invoke-virtual {v1, v8, v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_8
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_9

    const-wide v6, 0x1030000001aL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_9
    const-wide v4, 0x10300000014L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000015L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10b00000016L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10e00000001L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000002L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10800000017L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000018L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_a
    const-wide v4, 0x20e00000007L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v4, 0x20e0000001fL

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    if-eqz p4, :cond_b

    const-wide v4, 0x20e00000008L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v4, 0x20e00000009L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v7, 0x1000000

    or-int/2addr v6, v7

    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v7, v7

    and-int/2addr v6, v7

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    const-wide v5, 0x1080000000aL

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000001aL

    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000001bL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_b
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    const-wide v7, 0x20e0000000bL

    if-eqz v4, :cond_c

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_c
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_d

    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_d
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_e
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_f
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_10
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_11
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_12

    const/4 v4, 0x6

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_12
    const-wide v4, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v7, 0x10800000001L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000003L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v7, :cond_13

    const/4 v7, 0x0

    :goto_2
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    const-wide v8, 0x2090000000cL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_13
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    :goto_3
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_14

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    const-wide v9, 0x2090000000dL

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_14
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    :goto_4
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_15

    const-wide v8, 0x20b0000000fL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_15
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    :goto_5
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_16

    const-wide v8, 0x20b00000010L

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_16
    const-wide v7, 0x10e00000011L

    iget v9, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000012L

    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v9, p5, v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1030000001cL

    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_17

    const-wide/16 v9, 0x0

    goto :goto_6

    :cond_17
    sub-long v9, p5, v9

    :goto_6
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1030000001dL

    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_18

    move-wide v9, v11

    goto :goto_7

    :cond_18
    sub-long v9, p5, v9

    :goto_7
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v9, v7, v11

    const-wide v10, 0x11200000013L

    if-nez v9, :cond_19

    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_8

    :cond_19
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_8
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v7, v9

    const-wide v10, 0x11200000014L

    if-nez v9, :cond_1a

    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    :cond_1a
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_9
    const-wide v6, 0x1040000001eL

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000015L

    iget v8, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000016L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000017L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    const/high16 v0, 0x1000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p4

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a
    const/high16 v0, 0x800000

    and-int/2addr v0, p4

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_b
    return-void
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_6

    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7

    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_8

    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_a

    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    const/high16 v0, 0x800000

    and-int/2addr v0, p2

    if-eqz v0, :cond_b

    const-string v0, " WITHIN_EXPEDITED_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    if-eqz p2, :cond_c

    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    return-void
.end method

.method public getBatteryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object v0
.end method

.method getBucketName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestRunTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEffectiveStandbyBucket()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    return-wide v0
.end method

.method public getFirstForceBatchedTimeElapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getFractionRunTime()F
    .locals 12

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide v7, 0x7fffffffffffffffL

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v6, :cond_0

    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_0

    return v9

    :cond_0
    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    move v9, v5

    :goto_0
    return v9

    :cond_2
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v4, v10, v7

    if-nez v4, :cond_4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move v9, v5

    :goto_1
    return v9

    :cond_4
    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    return v5

    :cond_5
    cmp-long v4, v0, v10

    if-ltz v4, :cond_6

    return v9

    :cond_6
    sub-long v4, v0, v2

    long-to-float v4, v4

    sub-long/2addr v10, v2

    long-to-float v2, v10

    div-float/2addr v4, v2

    return v4
.end method

.method public getInternalFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLastFailedRunTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getNumFailures()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSatisfiedConstraintFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return v0
.end method

.method public getSourceUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return v0
.end method

.method public getStandbyBucket()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return v0
.end method

.method public getStopReason()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, 0x1d4c0

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2710

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public getWhenStandbyDeferred()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContentTriggerConstraint()Z
    .locals 2

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeadlineConstraint()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasExecutingWorkLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdleConstraint()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method hasPowerConstraint()Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasStorageNotLowConstraint()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasWorkLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConstraintSatisfied(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstraintsSatisfied()Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public isPreparedLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public isRequestedExpeditedJob()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public maybeLogBucketMismatch()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " became active but still in NEVER bucket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    :cond_0
    return-void
.end method

.method public prepareLocked()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_1
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z
    .locals 1

    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    const/high16 v0, 0x400000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setBatteryNotLowConstraintSatisfied(JZ)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setChargingConstraintSatisfied(JZ)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setConnectivityConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setConstraintSatisfied(IJZ)Z
    .locals 7

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p4, :cond_1

    return v2

    :cond_1
    sget-boolean v3, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_2

    const-string v4, "NOT "

    goto :goto_1

    :cond_2
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "satisfied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.JobStatus"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, p1

    and-int/2addr v4, v5

    if-eqz p4, :cond_5

    move v5, p1

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const v5, -0x6bfffff1

    and-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v5, :cond_6

    and-int v6, v4, v5

    if-ne v5, v6, :cond_6

    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    aput-wide p2, v5, v6

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aput v4, v5, v6

    add-int/2addr v6, v1

    rem-int/lit8 v6, v6, 0xa

    iput v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    invoke-direct {p0, p1, p4}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result v4

    if-eqz v3, :cond_7

    if-nez v4, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->constraintToStopReason(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_5

    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_8

    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_8
    :goto_5
    return v1
.end method

.method setContentTriggerConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setDeadlineConstraintSatisfied(JZ)Z
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    return v2

    :cond_1
    return v1
.end method

.method setDeviceNotDozingConstraintSatisfied(JZZ)Z
    .locals 3

    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return v0

    :cond_2
    return v1
.end method

.method setExpeditedJobQuotaConstraintSatisfied(JZ)Z
    .locals 3

    const/high16 v0, 0x800000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinExpeditedQuota:Z

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return v2

    :cond_2
    return v1
.end method

.method public setFirstForceBatchedTimeElapsed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-void
.end method

.method setIdleConstraintSatisfied(JZ)Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-void
.end method

.method setQuotaConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStandbyBucket(I)V
    .locals 3

    const v0, 0x10000007

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v2, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->removeDynamicConstraints(I)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    return-void
.end method

.method setStorageNotLowConstraintSatisfied(JZ)Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setTimingDelayConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setTrackingController(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    return-void
.end method

.method setUidActive(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWhenStandbyDeferred(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-void
.end method

.method public shouldTreatAsExpeditedJob()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinExpeditedQuota:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v0, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-direct {p1}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "JobStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    const-string v1, " TIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, " NET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " BATNOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " STORENOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " PERIODIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " PERSISTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_9

    const-string v1, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, " URIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v1, :cond_b

    const-string v1, " failures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, " READY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    const-string v1, " satisfied:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unsatisfied:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr v1, v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unprepareLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v2, "Was already unprepared at "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_2
    return-void
.end method

.method wouldBeReadyWithConstraint(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result v0

    return v0
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
