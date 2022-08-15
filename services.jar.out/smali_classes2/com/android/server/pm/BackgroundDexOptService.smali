.class public final Lcom/android/server/pm/BackgroundDexOptService;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/BackgroundDexOptService$Injector;,
        Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final IDLE_OPTIMIZATION_PERIOD:J

.field public static final JOB_IDLE_OPTIMIZE:I = 0x320
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final JOB_POST_BOOT_UPDATE:I = 0x321
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sDexoptServiceName:Landroid/content/ComponentName;


# instance fields
.field public mDexOptCancellingThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public mDexOptThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDowngradeUnusedAppsThresholdInMillis:J

.field public final mFailedPackageNamesPrimary:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mFailedPackageNamesSecondary:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFinishedPostBootUpdate:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

.field public final mLastCancelledPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastExecutionDurationIncludingSleepMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionDurationMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionStartTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionStartUptimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPackagesUpdatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

.field public mThermalStatusCutoff:I


# direct methods
.method public static synthetic $r8$lambda$2x2o5jOFqSwzzf8UndMq3mKznUo(Lcom/android/server/pm/BackgroundDexOptService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$cancelBackgroundDexoptJob$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ELonELsatTgdaseDEofEmuJoJXM(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$onStartJob$1(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WFSIuiapo06I6TQdJMnXhIb_C-E(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptPrimary$2(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vuNmAaCST9Mwe0ZxenjW2kTQZIo(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptSecondary$3(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ycTtqWNgpTEagdZYSyId_EId2fw(Lcom/android/server/pm/BackgroundDexOptService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/pm/BackgroundDexOptService;)Lcom/android/server/pm/BackgroundDexOptService$Injector;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleAJob(Lcom/android/server/pm/BackgroundDexOptService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->scheduleAJob(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "BackgroundDexOptService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/BackgroundDexOptJobService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptHelper()Lcom/android/server/pm/DexOptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    return-void
.end method

.method public static getService()Lcom/android/server/pm/BackgroundDexOptService;
    .locals 1

    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BackgroundDexOptService;

    return-object v0
.end method

.method private synthetic lambda$cancelBackgroundDexoptJob$0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V

    return-void
.end method

.method private synthetic lambda$onStartJob$1(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .locals 8

    const-string v0, " completed:"

    const-string v1, "dexopt finishing. jobid:"

    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v3, "BackgroundDexOptService"

    const-wide/32 v4, 0x40000

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    const-string v4, "jobExecution"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x321

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v7

    if-ne v7, v5, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    if-ne p2, v5, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    :cond_1
    xor-int/2addr p1, v6

    invoke-virtual {p4, p3, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p4, p3, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    if-ne p2, v5, :cond_3

    invoke-virtual {p4, p3, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p4, p3, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    throw p1
.end method

.method private synthetic lambda$performDexOptPrimary$2(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$performDexOptSecondary$3(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abortIdleOptimizations(J)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getCurrentThermalStatus()I

    move-result v0

    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    const-string v2, "BackgroundDexOptService"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermal throttling status during bgdexopt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    if-lt v0, v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBatteryLevelLow()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Aborting background dex opt job due to low storage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public cancelBackgroundDexoptJob()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final cancelDexOptAndWaitForCompletion()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final controlDexOptBlockingLocked(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->controlDexOptBlocking(Z)V

    return-void
.end method

.method public final convertPackageDexOptimizerStatusToInternal(I)I
    .locals 2

    const/4 p0, -0x1

    const/4 v0, 0x5

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkknown error code from PackageDexOptimizer:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I
    .locals 9

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0xb

    const/16 v1, 0x24

    if-nez p5, :cond_2

    const/16 v1, 0x224

    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v4

    const/4 p5, 0x0

    if-nez p4, :cond_4

    const-string p4, "android"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;II)I

    move-result p5

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;II)I

    move-result p5

    :goto_1
    const/4 p1, 0x1

    if-ne p5, p1, :cond_6

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    :cond_6
    return p5
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    const-string v1, "enabled:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "mDexOptThread:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "mDexOptCancellingThread:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "mFinishedPostBootUpdate:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "mLastExecutionStatus:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string v1, "mLastExecutionStartTimeMs:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v1, "mLastExecutionDurationIncludingSleepMs:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v1, "mLastExecutionStartUptimeMs:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v1, "mLastExecutionDurationMs:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v1, "now:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v1, "mLastCancelledPackages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "mFailedPackageNamesPrimary:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "mFailedPackageNamesSecondary:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceRootOrShell()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Should be shell or root user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final getDirectorySize(Ljava/io/File;)J
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    :cond_1
    return-wide v2
.end method

.method public final getLowStorageThreshold()J
    .locals 4

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirStorageLowBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, "BackgroundDexOptService"

    const-string v2, "Invalid low storage threshold"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v0
.end method

.method public final getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p2, p1

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_2

    aget-object v4, p1, v3

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public final idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JZ)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    move-object v7, p0

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v1

    :cond_0
    const-wide/16 v1, 0x2

    mul-long v1, v1, p3

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v1

    sget-boolean v2, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "BackgroundDexOptService"

    if-eqz v2, :cond_1

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should Downgrade "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    iget-wide v4, v7, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    invoke-interface {v9, v4, v5}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v10

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsused Packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v2, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v9

    move-object v3, p1

    move-object v4, v12

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, p1

    move-object v4, v12

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object v2, v0

    goto :goto_1

    :cond_8
    move-object v1, p2

    move-object v2, v1

    :goto_1
    move-object v1, p0

    move-wide/from16 v3, p3

    move-object v5, v8

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Ljava/util/List;JLandroid/util/ArraySet;Z)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    throw v0
.end method

.method public final isCancelling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logStatus(I)V
    .locals 2

    const-string p0, "BackgroundDexOptService"

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle optimizations ended with unexpected code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Idle optimizations failed from dexopt."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Idle optimizations aborted by low battery."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "Idle optimizations aborted by thermal throttling."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "Idle optimizations aborted because of space constraints."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "Idle optimizations aborted by cancellation."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p1, "Idle optimizations completed."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final markDexOptCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only mDexOptThread can mark completion, mDexOptThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " current:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    const/16 v0, 0x321

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyPackageChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyPackagesUpdated(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    invoke-interface {v1, p1}, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;->onPackagesUpdated(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyPinService(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPinnerService()Lcom/android/server/PinnerService;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pinning optimized code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_0
    return-void
.end method

.method public onStartJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .locals 11

    const-string v0, "BackgroundDexOptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x321

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "BackgroundDexOptService"

    const-string v0, "Low storage, skipping this run"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "BackgroundDexOptService"

    const-string v0, "No packages to optimize"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptThermalCutoff()I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v3

    return v2

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v4, :cond_4

    monitor-exit v3

    return v2

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BackgroundDexOptService_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v0, "PostBoot"

    goto :goto_1

    :cond_5
    const-string v0, "Idle"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;

    move-object v4, v10

    move-object v5, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    invoke-virtual {v2, v0, v10}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V

    monitor-exit v3

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStopJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStopJob:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackgroundDexOptService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    const-string p0, "DexOptCancel"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    const/4 p0, 0x1

    return p0
.end method

.method public final optimizePackage(Ljava/lang/String;ZZ)I
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    const/4 v1, 0x4

    if-nez p3, :cond_1

    const/16 v1, 0x205

    :cond_1
    if-nez p2, :cond_3

    const-string p2, "android"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final optimizePackages(Ljava/util/List;JLandroid/util/ArraySet;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    return v4

    :cond_2
    const/4 v7, -0x1

    if-ne v5, v4, :cond_3

    invoke-virtual {p4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-ne v5, v7, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v2

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3, v1, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v3

    if-ne v3, v6, :cond_6

    return v4

    :cond_6
    if-ne v3, v7, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v2

    goto :goto_0

    :cond_7
    return v2
.end method

.method public final performDexOptPrimary(Ljava/lang/String;II)I
    .locals 1

    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result p0

    return p0
.end method

.method public final performDexOptSecondary(Ljava/lang/String;II)I
    .locals 1

    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 p3, p3, 0x8

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result p0

    return p0
.end method

.method public final reconcileSecondaryDexFiles()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    return-void
.end method

.method public runBackgroundDexoptJob(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object p1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    throw p1
.end method

.method public final runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    iput-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    move-result-wide v8

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->logStatus(I)V

    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iput p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    monitor-exit p2

    if-eqz p1, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final scheduleAJob(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/16 v2, 0x320

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    sget-wide v1, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public final shouldDowngrade(J)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    :goto_0
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const/4 p2, 0x2

    if-ne p3, p2, :cond_3

    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_1
    return p3

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public final waitForDexOptThreadToFinishLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "BackgroundDexOptService"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    const-string v2, "waitForDexOptThreadToFinishLocked"

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Interrupted while waiting for dexopt thread"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final writeStatsLog(Landroid/app/job/JobParameters;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    iget-wide v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    iget-wide v6, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;->write(IIJJ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
