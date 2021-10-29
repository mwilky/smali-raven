.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final IDLE_OPTIMIZATION_PERIOD:J

.field private static final JOB_IDLE_OPTIMIZE:I = 0x320

.field private static final JOB_POST_BOOT_UPDATE:I = 0x321

.field private static final LOW_THRESHOLD_MULTIPLIER_FOR_DOWNGRADE:I = 0x2

.field private static final OPTIMIZE_ABORT_BY_JOB_SCHEDULER:I = 0x2

.field private static final OPTIMIZE_ABORT_NO_SPACE_LEFT:I = 0x3

.field private static final OPTIMIZE_ABORT_THERMAL:I = 0x4

.field private static final OPTIMIZE_CONTINUE:I = 0x1

.field private static final OPTIMIZE_PROCESSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static final THERMAL_CUTOFF_DEFAULT:I = 0x2

.field private static final mDowngradeUnusedAppsThresholdInMillis:J

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNamesPrimary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sFailedPackageNamesSecondary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackagesUpdatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDataDir:Ljava/io/File;

.field private final mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mThermalService:Landroid/os/IThermalService;

.field private mThermalStatusCutoff:I


# direct methods
.method static constructor <clinit>()V
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

    const-class v1, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    nop

    const-string v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalService:Landroid/os/IThermalService;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    return-void
.end method

.method private abortIdleOptimizations(J)I
    .locals 5

    const-string v0, "BackgroundDexOptService"

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v1}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result v1

    sget-boolean v2, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermal throttling status during bgdexopt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/BackgroundDexOptService;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static addPackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .locals 2

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z
    .locals 12

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xb

    const/16 v2, 0x224

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v10

    if-nez p3, :cond_2

    const-string v3, "android"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    const/16 v3, 0x80

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v4, p2

    move-wide v5, v10

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    :cond_4
    return v0
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-direct {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method private static getDowngradeUnusedAppsThresholdInMillis()J
    .locals 5

    const-string v0, "pm.dexopt.downgrade_after_inactive_days"

    const-string v1, "pm.dexopt.downgrade_after_inactive_days"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    return-wide v2

    :cond_1
    :goto_0
    const-string v2, "BackgroundDexOptService"

    const-string v3, "SysProp pm.dexopt.downgrade_after_inactive_days not set"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x7fffffffffffffffL

    return-wide v2
.end method

.method private getLowStorageThreshold(Landroid/content/Context;)J
    .locals 4

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, "BackgroundDexOptService"

    const-string v3, "Invalid low storage threshold"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v0
.end method

.method private getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v2, v5

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v6, v5

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    new-array v9, v0, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-wide v2

    :cond_3
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    const-string v0, "BackgroundDexOptService"

    const-string v1, "Performing idle optimizations"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;J)I

    move-result v2

    return v2
.end method

.method private idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;J)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;J)I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v0

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->supportSecondaryDex()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    nop

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v1

    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    move-object v5, v11

    goto/16 :goto_3

    :cond_0
    const-wide/16 v1, 0x2

    mul-long v9, p3, v1

    :try_start_2
    invoke-direct {v15, v9, v10}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v1

    move v12, v1

    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const-string v2, "BackgroundDexOptService"

    if-eqz v1, :cond_1

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should Downgrade "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    if-eqz v12, :cond_8

    sget-wide v3, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    invoke-virtual {v13, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsused Packages "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-direct {v15, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    nop

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v4

    :cond_3
    :try_start_4
    invoke-direct {v15, v13, v2, v5}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {v15, v13, v2, v8}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    :cond_5
    goto :goto_0

    :cond_6
    new-instance v1, Landroid/util/ArraySet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v2, p2

    :try_start_5
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v5, v11

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, v11

    goto :goto_3

    :cond_7
    move-object/from16 v2, p2

    goto :goto_1

    :cond_8
    move-object/from16 v2, p2

    :goto_1
    move-object/from16 v16, v2

    :goto_2
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-wide/from16 v4, p3

    move-object v7, v11

    :try_start_7
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v1, :cond_9

    nop

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v1

    :cond_9
    if-nez v0, :cond_a

    nop

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v8

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v8, p0

    move-wide v3, v9

    move-object/from16 v9, p1

    move-object/from16 v10, v16

    move-object v5, v11

    move v6, v12

    move-wide/from16 v11, p3

    move v13, v2

    :try_start_8
    invoke-direct/range {v8 .. v14}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    nop

    invoke-direct {v15, v5}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-direct {v15, v5}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v2

    :catchall_3
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v5, v11

    move-object/from16 v2, v16

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v2, p2

    move-object v5, v11

    :goto_3
    invoke-direct {v15, v5}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-direct {v15, v5}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    throw v0
.end method

.method private static isBackgroundDexoptDisabled()Z
    .locals 2

    const-string v0, "pm.dexopt.disable_bg_dexopt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$performDexOptPrimary$0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$performDexOptSecondary$1(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private notifyPackagesUpdated(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    invoke-interface {v2, p1}, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;->onPackagesUpdated(Landroid/util/ArraySet;)V

    goto :goto_0

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

.method private notifyPinService(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinning optimized code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundDexOptService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_0
    return-void
.end method

.method private optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z
    .locals 3

    const/16 v0, 0x9

    const/16 v1, 0x205

    if-nez p3, :cond_1

    const-string v2, "android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v2

    :goto_1
    return v2
.end method

.method private optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;JZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1, v1, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 3

    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 3

    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 v1, p4, 0x8

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    invoke-direct {p0, p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    cmp-long v9, v7, v1

    const-string v10, "BackgroundDexOptService"

    if-gez v9, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-boolean v9, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v9, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v10, 0x2

    const/4 v11, 0x4

    invoke-direct {v9, v6, v10, v11}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, v9}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method private reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

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

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static removePackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .locals 2

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v6, Lcom/android/server/pm/BackgroundDexOptService$3;

    const-string v2, "BackgroundDexOptService_IdleOptimization"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V

    invoke-virtual {v6}, Lcom/android/server/pm/BackgroundDexOptService$3;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public static runIdleOptimizationsNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>()V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$2;

    const-string v3, "BackgroundDexOptService_PostBootUpdate"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService$2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$2;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->isBackgroundDexoptDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$1;

    invoke-direct {v1, v0}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Landroid/app/job/JobScheduler;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x320

    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BackgroundDexOptService"

    const-string v2, "BgDexopt scheduled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private shouldDowngrade(J)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private supportSecondaryDex()Z
    .locals 2

    const-string v0, "dalvik.vm.dexopt.secondary"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I
    .locals 3
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

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    :goto_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    :goto_1
    return v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    const-string v1, "BackgroundDexOptService"

    if-eqz v0, :cond_0

    const-string v0, "onStartJob"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "Low storage, skipping this run"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "No packages to optimize"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v1, 0x2

    const-string v3, "dalvik.vm.dexopt.thermal-cutoff"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/16 v3, 0x321

    if-ne v1, v3, :cond_3

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BackgroundDexOptService"

    const-string v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x321

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2
.end method
