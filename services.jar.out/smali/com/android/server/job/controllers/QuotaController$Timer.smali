.class final Lcom/android/server/job/controllers/QuotaController$Timer;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Timer"
.end annotation


# instance fields
.field private mBgJobCount:I

.field private mDebitAdjustment:J

.field private final mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

.field private final mRegularJobTimer:Z

.field private final mRunningBgJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeElapsed:J

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    new-instance p1, Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-direct {p1, p3, p4}, Lcom/android/server/job/controllers/QuotaController$Package;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    iput-boolean p5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/job/controllers/QuotaController$Timer;)Lcom/android/server/job/controllers/QuotaController$Package;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    return-object v0
.end method

.method private cancelCutoff()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private emitSessionLocked(J)V
    .locals 13

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-gtz v5, :cond_0

    return-void

    :cond_0
    new-instance v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    move-object v0, v9

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController$TimingSession;-><init>(JJI)V

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v7, v0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    xor-int/lit8 v10, v0, 0x1

    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    invoke-static/range {v6 .. v12}, Lcom/android/server/job/controllers/QuotaController;->access$1700(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$1800(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private scheduleCutoff()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    :goto_1
    nop

    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v6, :cond_3

    const-string v6, "Regular job"

    goto :goto_2

    :cond_3
    const-string v6, "EJ"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

.method private shouldTrackLocked()Z
    .locals 13

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$1900(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v3

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    iget v8, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2100(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v8

    iget v9, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v8, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v8

    iget-boolean v10, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    iget v11, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_2

    cmp-long v10, v0, v8

    if-gez v10, :cond_3

    :cond_2
    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11, v2}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->access$2300(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    iget v12, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v11, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-nez v11, :cond_4

    if-nez v5, :cond_4

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    return v6
.end method


# virtual methods
.method dropEverythingLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Timer<"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_0

    const-string v0, "REG"

    goto :goto_0

    :cond_0
    const-string v0, "EJ"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ">{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, "} "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "started at "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v0, "ms ago)"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "NOT active"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " running bg jobs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-nez v0, :cond_2

    const-string v0, " (debit adj="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 6
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

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/QuotaController$Package;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method getBgJobCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentDuration(J)J
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    add-long/2addr v1, v3

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-lez v1, :cond_0

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

.method isRunning(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onStateChangedLocked(JZ)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    :cond_2
    :goto_0
    return-void
.end method

.method rescheduleCutoff()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    return-void
.end method

.method startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->access$1500(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer ignoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because isTop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting to track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    :cond_5
    return-void
.end method

.method stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Quota"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping tracking of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "JobScheduler.Quota"

    const-string v2, "Timer isn\'t tracking any jobs but still told to stop"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v4, v4, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4, v3}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateDebitAdjustment(JJ)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    add-long/2addr v0, p3

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    return-void
.end method
