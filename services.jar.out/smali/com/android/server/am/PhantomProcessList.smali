.class public final Lcom/android/server/am/PhantomProcessList;
.super Ljava/lang/Object;
.source "PhantomProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PhantomProcessList$Injector;
    }
.end annotation


# static fields
.field private static final CGROUP_PATH_PREFIXES:[Ljava/lang/String;

.field private static final CGROUP_PID_PREFIX:Ljava/lang/String; = "/pid_"

.field private static final CGROUP_PROCS:Ljava/lang/String; = "/cgroup.procs"

.field private static final CGROUP_V1:I = 0x0

.field private static final CGROUP_V2:I = 0x1

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mAppPhantomProcessMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCgroupProcsFds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field mCgroupVersion:I

.field private final mDataBuffer:[B

.field mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

.field private final mKillHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field final mPhantomProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPhantomProcessesPidFds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhantomToAppProcessMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTempPhantomProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTrimPhantomProcessScheduled:Z

.field mUpdateSeq:I

.field final mZombiePhantomProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DV2oO0oBIWu9yWxcWhpeHYoWXn4(Lcom/android/server/am/PhantomProcessList;Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hpwNNTyxzGWZAqmB6EftBRf3tx4(Lcom/android/server/am/PhantomProcessList;Ljava/io/FileDescriptor;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "/acct/uid_"

    const-string v1, "/sys/fs/cgroup/uid_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    iput v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-direct {v0}, Lcom/android/server/am/PhantomProcessList$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-direct {p0}, Lcom/android/server/am/PhantomProcessList;->probeCgroupVersion()V

    return-void
.end method

.method private addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V
    .locals 5

    if-eq p3, p2, :cond_5

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-ne p1, v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v3, p2}, Lcom/android/server/am/PhantomProcessList$Injector;->getProcessName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, p2, v4}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->delete(I)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method static getProcessName(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isAppProcess(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

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

.method private lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    if-nez v1, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/PhantomProcessList;->getCgroupFilePath(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v3, v2}, Lcom/android/server/am/PhantomProcessList$Injector;->openCgroupProcs(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    nop

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v3

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v7, v1, v2, v8, v9}, Lcom/android/server/am/PhantomProcessList$Injector;->readCgroupProcs(Ljava/io/InputStream;[BII)I

    move-result v7

    move v3, v7

    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    goto :goto_3

    :cond_3
    int-to-long v7, v3

    add-long/2addr v5, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_5

    aget-byte v8, v2, v7

    const/16 v9, 0xa

    if-ne v8, v9, :cond_4

    invoke-direct {p0, p1, v4, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    mul-int/lit8 v9, v4, 0xa

    add-int/lit8 v10, v8, -0x30

    add-int/2addr v9, v10

    move v4, v9

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    array-length v7, v2

    if-ge v3, v7, :cond_2

    nop

    :goto_3
    if-eqz v4, :cond_6

    invoke-direct {p0, p1, v4, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    :cond_6
    neg-long v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_4

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in reading cgroup procs from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->delete(I)V

    :goto_4
    return-void

    :cond_7
    :goto_5
    return-void
.end method

.method private onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_0

    :cond_1
    const-string v3, "Process error"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

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

.method private onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    iget-boolean v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method

.method private probeCgroupVersion()V
    .locals 4

    sget-object v0, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private scheduleTrimPhantomProcessesLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "All Active App Child Processes:"

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v1, "All Zombie App Child Processes:"

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  proc #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/PhantomProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method forEachPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;Ljava/util/function/Function;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PhantomProcessRecord;

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
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

.method getCgroupFilePath(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/pid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cgroup.procs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct {v1, v11}, Lcom/android/server/am/PhantomProcessList;->isAppProcess(I)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    return-object v12

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    if-ltz v13, :cond_2

    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v0}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v2, v1, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    iget-object v3, v1, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4
    :goto_0
    if-nez p4, :cond_5

    return-object v12

    :cond_5
    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_8

    :try_start_0
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    new-instance v15, Lcom/android/server/am/PhantomProcessRecord;

    iget-object v7, v1, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v8, v1}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/PhantomProcessRecord;-><init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Ljava/util/function/Consumer;)V

    move-object v2, v15

    iget v3, v1, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget-object v3, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v1, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_6

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v4

    iget-object v4, v1, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    const/4 v6, 0x5

    new-instance v7, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    iget-object v4, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object v5, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PhantomProcessList;->scheduleTrimPhantomProcessesLocked()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    return-object v12

    :cond_8
    return-object v12
.end method

.method killPhantomProcessGroupLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;IILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    if-ne v5, p2, :cond_0

    invoke-virtual {v5, p5, v2}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caused by siling process: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caused by child process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p4, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$trimPhantomProcessesIfNecessary$0$PhantomProcessList(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v3, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    sub-int/2addr v1, v3

    return v1

    :cond_2
    iget-wide v4, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v6, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v6, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method lookForPhantomProcessesLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method onAppDied(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

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

.method pruneStaleProcessesLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    iget v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    if-ge v3, v4, :cond_0

    const-string v3, "Stale process"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    iget v2, v1, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method trimPhantomProcessesIfNecessary()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-lt v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PhantomProcessRecord;

    const-string v5, "Trimming phantom processes"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    :cond_2
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked()V

    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/PhantomProcessRecord;->updateAdjLocked()V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->pruneStaleProcessesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
