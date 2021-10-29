.class public final Lcom/android/server/stats/pull/ProcfsMemoryUtil;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;,
        Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    }
.end annotation


# static fields
.field private static final CMDLINE_OUT:[I

.field private static final STATUS_KEYS:[Ljava/lang/String;

.field private static final VMSTAT_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    const-string v0, "Uid:"

    const-string v1, "VmHWM:"

    const-string v2, "VmRSS:"

    const-string v3, "RssAnon:"

    const-string v4, "VmSwap:"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    const-string v0, "oom_kill"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessCmdlines()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [I

    const-string v1, "/proc"

    invoke-static {v1, v0}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    if-gez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method public static readCmdlineFromProcfs(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    .locals 9

    sget-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    const/4 v5, 0x3

    aput-wide v3, v1, v5

    const/4 v6, 0x4

    aput-wide v3, v1, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v7, v1, v2

    cmp-long v0, v7, v3

    if-eqz v0, :cond_1

    aget-wide v7, v1, v5

    cmp-long v0, v7, v3

    if-eqz v0, :cond_1

    aget-wide v7, v1, v6

    cmp-long v0, v7, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    invoke-direct {v0}, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;-><init>()V

    aget-wide v2, v1, v2

    long-to-int v2, v2

    iput v2, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    long-to-int v2, v2

    iput v2, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    long-to-int v2, v2

    iput v2, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    aget-wide v2, v1, v5

    long-to-int v2, v2

    iput v2, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    aget-wide v2, v1, v6

    long-to-int v2, v2

    iput v2, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static readVmStat()Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;
    .locals 7

    sget-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    const-string v5, "/proc/vmstat"

    invoke-static {v5, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v5, v1, v2

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;

    invoke-direct {v0}, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;-><init>()V

    aget-wide v2, v1, v2

    long-to-int v2, v2

    iput v2, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    return-object v0
.end method
