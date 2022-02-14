.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSessionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerService$InternalCallback;,
        Lcom/android/server/pm/PackageInstallerService$Callbacks;,
        Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;,
        Lcom/android/server/pm/PackageInstallerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ADB_DEV_MODE:I = 0x24

.field private static final LOGD:Z = false

.field private static final MAX_ACTIVE_SESSIONS_NO_PERMISSION:J = 0x32L

.field private static final MAX_ACTIVE_SESSIONS_WITH_PERMISSION:J = 0x400L

.field private static final MAX_AGE_MILLIS:J = 0xf731400L

.field private static final MAX_HISTORICAL_SESSIONS:J = 0x100000L

.field private static final MAX_SESSION_AGE_ON_LOW_STORAGE_MILLIS:J = 0x1b77400L

.field private static final MAX_TIME_SINCE_UPDATE_MILLIS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field private final mAllocatedSessions:Landroid/util/SparseBooleanArray;

.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private volatile mBypassNextAllowedApexUpdateCheck:Z

.field private volatile mBypassNextStagedInstallerCheck:Z

.field private final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

.field private final mInstallHandler:Landroid/os/Handler;

.field private final mInstallThread:Landroid/os/HandlerThread;

.field private final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private final mLegacySessions:Landroid/util/SparseBooleanArray;

.field private volatile mOkToSendBroadcasts:Z

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRandom:Ljava/util/Random;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsDir:Ljava/io/File;

.field private final mSessionsFile:Landroid/util/AtomicFile;

.field private final mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

.field private final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-direct {v0}, Lcom/android/server/pm/SilentUpdatePolicy;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    new-instance v0, Lcom/android/server/pm/utils/RequestThrottle;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/utils/RequestThrottle;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "install_sessions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "package-session"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "install_sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    new-instance v0, Lcom/android/server/pm/StagingManager;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$Lifecycle;

    invoke-direct {v1, p1, p0}, Lcom/android/server/pm/PackageInstallerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->onBroadcastReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/utils/RequestThrottle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageInstallerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object v0
.end method

.method private addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private allocateSessionIdLocked()I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    if-ge v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to allocate session ID"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildAppIconFile(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildExternalStageCid(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;
    .locals 4

    iget-boolean v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_1

    iget v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-interface {v1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080352

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification not built for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vmdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v6, "createSession"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, v13

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "no_install_apps"

    move/from16 v11, p4

    invoke-virtual {v1, v11, v2}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v1, :cond_1

    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need the com.android.permission.USE_INSTALLER_V2 permission to use a data loader"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "INSTALL_REASON_ROLLBACK requires the MANAGE_ROLLBACKS permission or the TEST_MANAGE_ROLLBACKS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/16 v2, 0xff

    if-eqz v1, :cond_4

    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    iput-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :cond_4
    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_5

    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    move-object v10, v1

    const/16 v1, 0x7d0

    if-eq v13, v1, :cond_b

    if-nez v13, :cond_6

    goto :goto_3

    :cond_6
    if-eq v13, v3, :cond_7

    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v13, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_7
    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v13, v10}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_8
    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, -0x41

    iput v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v13}, Lcom/android/server/pm/PackageManagerService;->isCallerVerifier(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x10001

    and-int/2addr v2, v3

    iput v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_9
    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_TEST_ONLY_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_a
    move-object v9, v0

    goto :goto_4

    :cond_b
    :goto_3
    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/4 v0, 0x0

    move-object v9, v0

    :goto_4
    const/4 v0, 0x0

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_c

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    if-eq v2, v13, :cond_c

    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v5, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v5, v2

    if-lez v5, :cond_c

    aget-object v0, v2, v4

    move-object v5, v0

    goto :goto_5

    :cond_c
    move-object v5, v0

    :goto_5
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_e

    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x100001

    and-int/2addr v0, v2

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_7

    :cond_e
    :goto_6
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_7
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/16 v2, 0x24

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_f

    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x80001

    and-int/2addr v0, v2

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_f
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_8

    :cond_10
    move v0, v4

    :goto_8
    move/from16 v33, v0

    if-eqz v33, :cond_12

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_13

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to perform APEX updates"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_13

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    const-string v7, "PackageInstaller"

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_9
    if-eqz v33, :cond_1a

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_18

    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_15

    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v6, 0x40000

    and-int/2addr v0, v6

    if-nez v0, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-staged APEX session doesn\'t support INSTALL_ENABLE_ROLLBACK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_a
    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v6, -0x400001

    and-int/2addr v0, v6

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_c

    :cond_17
    :goto_b
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v6, 0x400000

    or-int/2addr v0, v6

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_c

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A multi-session can\'t be set as APEX."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This device doesn\'t support the installation of APEX files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_c
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1c

    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageManagerService;->getFlagsForUid(I)I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    goto :goto_d

    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system apps could use the PackageManager.INSTALL_INSTANT_APP flag."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_d
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_1e

    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v0, :cond_1e

    invoke-direct {v14, v10}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_e

    :cond_1d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit staged install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_e
    if-eqz v33, :cond_20

    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v0, :cond_20

    invoke-direct {v14, v10}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_f

    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit non-staged APEX install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_f
    iput-boolean v4, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    iput-boolean v4, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_28

    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_22

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_21

    goto :goto_10

    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_RUNTIME_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_10
    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    iget-object v6, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_23

    iget-object v6, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    if-le v6, v7, :cond_24

    :cond_23
    iget-object v6, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-static {v6, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    :cond_24
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_26

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v15}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_11

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_27

    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_11

    :cond_27
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v15}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_28
    :goto_11
    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_1
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v0, v13}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v0

    iget-object v3, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v3, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez v3, :cond_2a

    int-to-long v6, v0

    const-wide/16 v16, 0x400

    cmp-long v3, v6, v16

    if-gez v3, :cond_29

    goto :goto_12

    :cond_29
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many active sessions for UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v39, v5

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move v6, v13

    move-object v4, v14

    goto/16 :goto_15

    :cond_2a
    int-to-long v6, v0

    const-wide/16 v16, 0x32

    cmp-long v3, v6, v16

    if-gez v3, :cond_2f

    :goto_12
    :try_start_3
    iget-object v3, v14, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    int-to-long v6, v3

    const-wide/32 v16, 0x100000

    cmp-long v6, v6, v16

    if-gez v6, :cond_2e

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v6

    move v8, v6

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v3, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v3, :cond_2c

    iget v3, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2b

    invoke-direct {v14, v8, v15}, Lcom/android/server/pm/PackageInstallerService;->buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;

    move-result-object v0

    move-object/from16 v36, v0

    move-object/from16 v37, v2

    goto :goto_13

    :cond_2b
    invoke-direct {v14, v8}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v0

    move-object/from16 v37, v2

    goto :goto_13

    :cond_2c
    move-object/from16 v36, v0

    move-object/from16 v37, v2

    :goto_13
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    if-eqz v0, :cond_2d

    if-eq v13, v1, :cond_2d

    if-eqz v13, :cond_2d

    iput-boolean v4, v15, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    :cond_2d
    move-object/from16 v7, p3

    invoke-static {v9, v5, v10, v7}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v38

    move-object/from16 v12, v38

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession;

    move-object v1, v0

    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v3, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v4, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v14, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    move-object/from16 v18, v5

    iget-object v5, v14, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v7, v5

    iget-object v5, v14, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    move/from16 p2, v8

    move-object v8, v5

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, ""

    move-object/from16 v39, v18

    move-object/from16 v5, p0

    move-object/from16 v40, v9

    move/from16 v9, p2

    move-object/from16 v41, v10

    move/from16 v10, p4

    move v11, v13

    move/from16 v42, v13

    move-object/from16 v13, p1

    move-wide/from16 v14, v34

    move-object/from16 v18, v36

    move-object/from16 v19, v37

    invoke-direct/range {v1 .. v32}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V

    move-object/from16 v4, p0

    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_5
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v5, p2

    :try_start_6
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$100(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {v0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    return v5

    :catchall_2
    move-exception v0

    goto :goto_14

    :catchall_3
    move-exception v0

    move/from16 v5, p2

    :goto_14
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_4
    move-exception v0

    move-object/from16 v39, v5

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move-object v4, v14

    move v6, v13

    goto :goto_15

    :cond_2e
    move-object/from16 v39, v5

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move/from16 v42, v13

    move-object v4, v14

    :try_start_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many historical sessions for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move/from16 v6, v42

    :try_start_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_5
    move-exception v0

    move/from16 v6, v42

    goto :goto_15

    :cond_2f
    move-object/from16 v39, v5

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move v6, v13

    move-object v4, v14

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many active sessions for UID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_6
    move-exception v0

    move-object/from16 v39, v5

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move v6, v13

    move-object v4, v14

    :goto_15
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_15

    :cond_30
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "User restriction prevents installing"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {p1}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-object v1
.end method

.method private getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isCalledBySystemOrShell(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

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

.method private isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "smdl"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v4, "smdl2tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2
.end method

.method private isStagedInstallerAllowed(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getWhitelistedStagedInstallers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$registerCallback$1(II)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private onBroadcastReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return-void
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static prepareStageDir(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restorecon session dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session dir already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readSessionsLocked()V
    .locals 14

    const-string v0, "PackageInstaller"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v12, v2

    const/4 v13, 0x1

    if-eq v2, v13, :cond_6

    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "session"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    move-object v10, p0

    invoke-static/range {v3 .. v11}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getUpdatedMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v9

    if-eqz v9, :cond_2

    const-wide/32 v9, 0x240c8400

    cmp-long v9, v7, v9

    if-ltz v9, :cond_1

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const-wide/32 v9, 0xf731400

    cmp-long v9, v5, v9

    if-ltz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Abandoning old session created at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v4, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v11, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_2
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget v11, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v5, "Could not read session"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_5
    :goto_3
    goto/16 :goto_0

    :cond_6
    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "Failed reading install sessions"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    goto :goto_6

    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_2
    move-exception v0

    :goto_5
    nop

    :goto_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->onAfterSessionRead(Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method private reconcileStagesLocked(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    return-void
.end method

.method private removeStagingDirs(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting orphan stage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private writeSessionsLocked()Z
    .locals 9

    const-string v0, "sessions"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/pm/PackageInstallerSession;->write(Landroid/util/TypedXmlSerializer;Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bypassNextAllowedApexUpdateCheck(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to bypass allowed apex update check"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bypassNextStagedInstallerCheck(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to bypass staged installer check"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "Active install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    nop

    if-nez v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Orphaned install sessions:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_5
    const-string v4, "Finalized install sessions:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "Historical install sessions:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_7

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "Legacy install sessions:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public freeStageDirs(Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v3

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v6, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v6, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v6, v1, v6

    const-wide/32 v8, 0x1b77400

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v5

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageInstallerSession;

    :goto_1
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    :cond_2
    goto :goto_2

    :cond_3
    iget-object v8, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "getAllSessions"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, v6

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getMySessions"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v5, p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/IntentSender;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    return-void
.end method

.method public synthetic lambda$new$0$PackageInstallerService()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method okToSendBroadcasts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "registerCallback"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method restoreAndApplyStagedSessionIfNeeded()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An orphan staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is found, parent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/StagingManager;->restoreSessions(Ljava/util/List;Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to unlimite silent updates"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPermissionsResult(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

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

.method public setSilentUpdatesThrottleTime(J)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/SilentUpdatePolicy;->setSilentUpdatesThrottleTime(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to set silent updates throttle time"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->systemReady()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting orphan icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    nop

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {v2}, Lcom/android/server/pm/utils/RequestThrottle;->runNow()Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v11, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v10, "uninstall"

    move v6, v12

    move/from16 v7, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v0, 0x7d0

    if-eq v12, v0, :cond_0

    if-eqz v12, :cond_0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v12, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v0, 0x0

    if-eqz v13, :cond_1

    invoke-virtual {v13, v3, v12}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    move v14, v5

    new-instance v15, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v15

    move-object/from16 v7, p4

    move v9, v14

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_1

    :cond_2
    if-eqz v14, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v8

    invoke-virtual {v0, v2, v8, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/16 v0, 0x71

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v3, v0, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    const/4 v8, 0x0

    if-lt v6, v7, :cond_4

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "package"

    invoke-static {v9, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const-string v8, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .locals 14

    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "uninstall"

    move v2, v7

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v1, 0x7d0

    if-eq v7, v1, :cond_0

    if-eqz v7, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v2, p2

    invoke-virtual {v1, v7, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v8, v1

    move-object/from16 v10, p3

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v4

    move-object v5, p1

    move/from16 v6, p4

    invoke-virtual {v3, p1, v4, v6}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-gt v4, v5, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    invoke-static {p2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object p2, v4

    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
