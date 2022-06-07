.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private mAppVersion:J

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field final mBuffer:[B

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mIsAdbRestore:Z

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mPipesClosed:Z

.field private final mPipesLock:Ljava/lang/Object;

.field private mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    nop

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-boolean p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iput-object p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method

.method private static getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .locals 4

    iget v0, p0, Lcom/android/server/backup/FileMetadata;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    sget v2, Landroid/system/OsConstants;->S_IWUSR:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v3, "no_backup/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private static isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$restoreOneFile$0(J)V
    .locals 0

    return-void
.end method

.method private setUpPipes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    const-string/jumbo v2, "packages_to_clear_data_before_full_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    new-instance v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v5, v1, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;I)V

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, v2, v0, v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    :goto_0
    invoke-virtual {v5}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    :cond_2
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_1
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 50

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const/4 v14, 0x0

    const-string v15, "BackupManagerService"

    if-nez v0, :cond_0

    const-string v0, "Restore engine used after halting"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_0
    sget-object v10, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v9, p7

    invoke-direct {v0, v11, v10, v9}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v7, v0

    const/4 v6, -0x3

    const/16 v24, 0x1

    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_22

    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1d

    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-eqz v13, :cond_1

    :try_start_1
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but saw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    return v14

    :cond_1
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_3

    const-string v0, "Saw new package; finalizing old one"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_1b

    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_manifest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v7, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-wide v2, v5, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    iget v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v16, v7

    move/from16 v18, p5

    move-object/from16 v19, v5

    move-object/from16 v20, v0

    move/from16 v22, v2

    move-object/from16 v23, v3

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v38, v15

    :try_start_4
    iget-wide v14, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v7, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v4}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v6, p6

    move-object v3, v5

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_18

    :cond_4
    move-object/from16 v38, v15

    :try_start_5
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1c

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v7, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    invoke-virtual {v7}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v2, v0

    :try_start_7
    iget-wide v8, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v7, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move/from16 v6, p6

    move-object v3, v5

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_19

    :catch_1
    move-exception v0

    move/from16 v6, p6

    move-object v9, v2

    move-object/from16 v40, v10

    move-object v5, v11

    move-object/from16 v15, v38

    move-object v11, v7

    goto/16 :goto_1b

    :catch_2
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object/from16 v15, v38

    move-object v11, v7

    goto/16 :goto_1b

    :cond_5
    const/4 v0, 0x1

    :try_start_8
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v14, v3

    sget-object v3, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v14}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v8

    aget v3, v3, v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1c

    const-string v8, "a"

    packed-switch v3, :pswitch_data_0

    move/from16 v17, v0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v15, v38

    move-object/from16 v38, v14

    goto/16 :goto_2

    :pswitch_0
    :try_start_9
    iget-object v3, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "apk present but ACCEPT"
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v15, v38

    :try_start_a
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    const/4 v0, 0x0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v38, v14

    goto/16 :goto_3

    :cond_6
    move-object/from16 v15, v38

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v38, v14

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v15, v38

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    goto/16 :goto_1b

    :pswitch_1
    move-object/from16 v15, v38

    :try_start_b
    iget-object v3, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "APK file; installing"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move/from16 v17, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v38, v14

    iget v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object v13, v4

    move-object/from16 v4, v18

    move-object/from16 v39, v5

    move-object v5, v6

    move-object v6, v0

    move-object v11, v7

    move-object/from16 v7, v39

    move-object v9, v10

    move-object/from16 v40, v10

    move v10, v14

    :try_start_c
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v0

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_1
    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v39

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    return v24

    :cond_8
    move/from16 v17, v0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v38, v14

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v40, v10

    move-object/from16 v5, p1

    move/from16 v6, p6

    move-object/from16 v9, p7

    move-object v11, v7

    goto/16 :goto_1b

    :pswitch_2
    move/from16 v17, v0

    move-object v13, v4

    move-object v3, v5

    move-object v11, v7

    move-object/from16 v40, v10

    move-object/from16 v15, v38

    move-object/from16 v38, v14

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    const-string v0, "Invalid policy from manifest"

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-direct {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1b

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    move v4, v0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v0, 0x0

    move v4, v0

    :goto_5
    const-string/jumbo v5, "k"

    if-eqz v4, :cond_f

    :try_start_d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1b

    if-nez v0, :cond_f

    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v0, v13, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    const-string v6, "Clearing app data preparatory to full restore"

    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v13}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    :cond_c
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    const/4 v7, 0x3

    :goto_6
    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getOperationType()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iput-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    :goto_7
    :try_start_f
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create agent for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v4, :cond_10

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring data for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " but agent is for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_10
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1b

    if-eqz v0, :cond_11

    const/4 v4, 0x0

    :cond_11
    if-eqz v4, :cond_1c

    const/4 v8, 0x1

    :try_start_10
    iget-wide v9, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_18

    move v14, v0

    if-eqz v14, :cond_12

    :try_start_11
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b

    move-wide/from16 v43, v16

    goto :goto_8

    :cond_12
    :try_start_12
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v16
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_18

    move-wide/from16 v43, v16

    :goto_8
    nop

    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v46, 0x1

    move-object/from16 v41, v0

    move/from16 v42, p6

    move-object/from16 v45, v2

    invoke-virtual/range {v41 .. v46}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    const-string/jumbo v0, "obb"

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_12

    const-string v2, " : "

    if-eqz v0, :cond_13

    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring OBB file for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v27, v2, v5

    iget-wide v6, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_a

    move/from16 v45, v8

    move-wide/from16 v46, v9

    :try_start_15
    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_8

    move-object/from16 v48, v11

    :try_start_16
    iget-wide v10, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6

    move/from16 v49, v4

    :try_start_17
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v37

    move-object/from16 v25, v0

    move-object/from16 v26, v13

    move-wide/from16 v28, v6

    move/from16 v30, v2

    move-object/from16 v31, v5

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    move/from16 v36, p6

    invoke-virtual/range {v25 .. v37}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_c

    move/from16 v16, v14

    goto/16 :goto_9

    :catch_6
    move-exception v0

    move/from16 v49, v4

    move/from16 v16, v14

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move/from16 v49, v4

    move/from16 v16, v14

    goto/16 :goto_b

    :catch_8
    move-exception v0

    move/from16 v49, v4

    move-object/from16 v48, v11

    move/from16 v16, v14

    goto/16 :goto_a

    :catch_9
    move-exception v0

    move/from16 v49, v4

    move-object/from16 v48, v11

    move/from16 v16, v14

    goto/16 :goto_b

    :catch_a
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    goto/16 :goto_a

    :catch_b
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    goto/16 :goto_b

    :cond_13
    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    :try_start_18
    iget-object v0, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_10

    if-eqz v0, :cond_14

    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v4, v3, Lcom/android/server/backup/FileMetadata;->version:J

    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c

    move/from16 v16, v14

    goto/16 :goto_9

    :catch_c
    move-exception v0

    move/from16 v16, v14

    goto/16 :goto_a

    :catch_d
    move-exception v0

    move/from16 v16, v14

    goto/16 :goto_b

    :cond_14
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_10

    if-eqz v0, :cond_15

    :try_start_1b
    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_c

    move/from16 v16, v14

    goto :goto_9

    :cond_15
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v26, v2, v4

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v10, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_10

    move/from16 v16, v14

    :try_start_1d
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v14}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v37

    move-object/from16 v25, v0

    move-wide/from16 v27, v4

    move/from16 v29, v2

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    move/from16 v36, p6

    invoke-interface/range {v25 .. v37}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_e

    :goto_9
    move/from16 v8, v45

    move/from16 v4, v49

    goto :goto_c

    :catch_e
    move-exception v0

    goto :goto_a

    :catch_f
    move-exception v0

    goto :goto_b

    :catch_10
    move-exception v0

    move/from16 v16, v14

    goto :goto_a

    :catch_11
    move-exception v0

    move/from16 v16, v14

    goto :goto_b

    :catch_12
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    :goto_a
    :try_start_1e
    const-string v2, "Agent crashed during full restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v4, v2

    goto :goto_c

    :catch_13
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v11, v48

    goto/16 :goto_1b

    :catch_14
    move-exception v0

    move/from16 v49, v4

    move/from16 v45, v8

    move-wide/from16 v46, v9

    move-object/from16 v48, v11

    move/from16 v16, v14

    :goto_b
    :try_start_1f
    const-string v2, "Couldn\'t establish restore"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_c
    if-eqz v4, :cond_1a

    const/4 v0, 0x1

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v5, v5, v24

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    move v5, v0

    move-wide/from16 v9, v46

    :goto_d
    const-wide/16 v6, 0x0

    cmp-long v0, v9, v6

    if-lez v0, :cond_19

    :try_start_20
    array-length v0, v12
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_16

    int-to-long v6, v0

    cmp-long v0, v9, v6

    if-lez v0, :cond_16

    :try_start_21
    array-length v0, v12
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_13

    goto :goto_e

    :cond_16
    long-to-int v0, v9

    :goto_e
    move v6, v0

    move-object/from16 v7, p1

    move-object/from16 v11, v48

    const/4 v14, 0x0

    :try_start_22
    invoke-virtual {v7, v12, v14, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1b

    move v14, v0

    if-gtz v14, :cond_17

    goto :goto_10

    :cond_17
    move/from16 v17, v6

    int-to-long v6, v14

    sub-long/2addr v9, v6

    if-eqz v5, :cond_18

    const/4 v6, 0x0

    :try_start_23
    invoke-virtual {v2, v12, v6, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_15

    goto :goto_f

    :catch_15
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    :try_start_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write to restore pipe: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1b

    const/4 v5, 0x0

    :cond_18
    :goto_f
    move-object/from16 v48, v11

    goto :goto_d

    :catch_16
    move-exception v0

    move-object/from16 v11, v48

    move-object/from16 v5, p1

    move/from16 v6, p6

    goto :goto_12

    :cond_19
    move-object/from16 v11, v48

    :goto_10
    :try_start_25
    iget-wide v6, v3, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_18

    move/from16 v6, p6

    :try_start_26
    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v8, v0

    goto :goto_11

    :cond_1a
    move/from16 v6, p6

    move-object/from16 v11, v48

    move-wide/from16 v9, v46

    :goto_11
    if-nez v8, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent failure restoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; ending restore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v13

    if-eqz p4, :cond_1d

    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    return v5

    :cond_1b
    move-object v2, v13

    goto :goto_14

    :catch_17
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v11, v48

    move-object/from16 v5, p1

    :goto_12
    move-object/from16 v9, p7

    goto/16 :goto_1b

    :catch_18
    move-exception v0

    move/from16 v6, p6

    :goto_13
    move-object/from16 v5, p1

    goto :goto_17

    :cond_1c
    move/from16 v6, p6

    move/from16 v49, v4

    move-object v2, v13

    :cond_1d
    :goto_14
    if-nez v4, :cond_21

    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v9, 0x1ff

    add-long/2addr v7, v9

    const-wide/16 v9, -0x200

    and-long/2addr v7, v9

    :goto_15
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_20

    array-length v0, v12

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-lez v0, :cond_1e

    array-length v0, v12
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1a

    goto :goto_16

    :cond_1e
    long-to-int v0, v7

    :goto_16
    move-object/from16 v5, p1

    const/4 v9, 0x0

    :try_start_27
    invoke-virtual {v5, v12, v9, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_19

    int-to-long v9, v10

    const-wide/16 v13, 0x0

    cmp-long v16, v9, v13

    if-gtz v16, :cond_1f

    goto :goto_18

    :cond_1f
    sub-long/2addr v7, v9

    goto :goto_15

    :catch_19
    move-exception v0

    goto :goto_17

    :cond_20
    move-object/from16 v5, p1

    goto :goto_18

    :catch_1a
    move-exception v0

    goto :goto_13

    :cond_21
    move-object/from16 v5, p1

    goto :goto_18

    :catch_1b
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v6, p6

    :goto_17
    move-object/from16 v9, p7

    goto :goto_1b

    :catch_1c
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    move-object/from16 v15, v38

    goto :goto_1a

    :cond_22
    move/from16 v6, p6

    move-object v3, v5

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v11, v7

    :goto_18
    move-object/from16 v2, p7

    :goto_19
    goto :goto_1c

    :catch_1d
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v40, v10

    move-object v5, v11

    :goto_1a
    move-object v11, v7

    move-object/from16 v9, p7

    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "io exception on restore socket read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v9

    :goto_1c
    if-nez v3, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    if-eqz p2, :cond_24

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_1d

    :cond_23
    const/4 v4, 0x0

    :cond_24
    :goto_1d
    if-eqz v3, :cond_25

    move/from16 v14, v24

    goto :goto_1e

    :cond_25
    move v14, v4

    :goto_1e
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_0
    :goto_0
    return-void
.end method

.method shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    invoke-static {v0, p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping restore of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and its contents as read-only dirs are currently not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 v0, 0x0

    return v0
.end method
