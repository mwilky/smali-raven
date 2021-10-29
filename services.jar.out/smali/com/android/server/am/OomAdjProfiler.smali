.class public Lcom/android/server/am/OomAdjProfiler;
.super Ljava/lang/Object;
.source "OomAdjProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_CPU_TIME:I = 0x2a


# instance fields
.field private mLastScheduledOnBattery:Z

.field private mLastScheduledScreenOff:Z

.field private mLastSystemServerCpuTimeMs:J

.field private mOnBattery:Z

.field private mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

.field final mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field

.field private mOomAdjStartTimeUs:J

.field private mOomAdjStarted:Z

.field private final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mScreenOff:Z

.field private mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

.field private mSystemServerCpuTimeUpdateScheduled:Z

.field final mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalOomAdjCalls:I

.field private mTotalOomAdjRunTimeUs:J


# direct methods
.method public static synthetic $r8$lambda$WGvtgxkAhtMnJr3XT1WyqVb7_14(Lcom/android/server/am/OomAdjProfiler;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OomAdjProfiler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OomAdjProfiler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    return v0
.end method

.method private scheduleSystemServerCpuTimeUpdate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    sget-object v1, Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, p0, v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSystemServerCpuTime(ZZZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    iget-wide v3, p0, Lcom/android/server/am/OomAdjProfiler;->mLastSystemServerCpuTimeMs:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeMs(JZZ)V

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastSystemServerCpuTimeMs:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method batteryPowerChanged(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OomAdjProfiler;->scheduleSystemServerCpuTimeUpdate()V

    iput-boolean p1, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    :goto_0
    const-string v0, "System server and oomAdj runtimes (ms) in recent battery sessions (most recent first):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "system_server="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom_adj="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "system_server="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "oom_adj="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    if-eqz v2, :cond_3

    const-string v2, "System server total oomAdj runtimes (us) since boot:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  cpu time spent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, "  number of calls="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "  average="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    iget v4, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onWakefulnessChanged(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OomAdjProfiler;->scheduleSystemServerCpuTimeUpdate()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method oomAdjEnded()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStarted:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStartTimeUs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(J)V

    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    iget v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method oomAdjStarted()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStartTimeUs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStarted:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
