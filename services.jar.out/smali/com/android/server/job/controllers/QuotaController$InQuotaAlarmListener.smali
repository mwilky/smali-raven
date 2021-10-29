.class Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InQuotaAlarmListener"
.end annotation


# instance fields
.field private final mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

.field private mMinQuotaCheckDelayMs:J

.field private mTriggerTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-direct {p1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mMinQuotaCheckDelayMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mMinQuotaCheckDelayMs:J

    return-wide v0
.end method

.method private setNextAlarmLocked()V
    .locals 2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setNextAlarmLocked(J)V

    return-void
.end method

.method private setNextAlarmLocked(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x2bf20

    sub-long v1, v5, v1

    cmp-long v1, v3, v1

    if-ltz v1, :cond_0

    cmp-long v1, v5, v3

    if-gez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling start alarm at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " for app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Quota"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;

    move-result-object v5

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v11

    const-string v9, "*job.quota_check*"

    move-wide v7, v3

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$3900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    :goto_0
    return-void
.end method


# virtual methods
.method addAlarmLocked(ILjava/lang/String;J)V
    .locals 4

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Package;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->remove(Lcom/android/server/job/controllers/QuotaController$Package;)Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setNextAlarmLocked()V

    return-void
.end method

.method dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    const-string v0, "In quota alarms:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NOT WAITING"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method dumpLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->size()I

    move-result v3

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    const-wide v4, 0x20b00000002L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    aget-object v6, v2, v3

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Package;

    const-wide v7, 0x10b00000001L

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/job/controllers/QuotaController$Package;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v7, 0x10300000002L

    aget-object v9, v2, v3

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public onAlarm()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Package;

    iget v4, v4, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v6, v6, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->remove(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mMinQuotaCheckDelayMs:J

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setNextAlarmLocked(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeAlarmLocked(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(Lcom/android/server/job/controllers/QuotaController$Package;)V

    return-void
.end method

.method removeAlarmLocked(Lcom/android/server/job/controllers/QuotaController$Package;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->remove(Lcom/android/server/job/controllers/QuotaController$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setNextAlarmLocked()V

    :cond_0
    return-void
.end method

.method removeAlarmsLocked(I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Package;

    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/job/controllers/QuotaController$AlarmQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setNextAlarmLocked()V

    :cond_2
    return-void
.end method

.method setMinQuotaCheckDelayMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->mMinQuotaCheckDelayMs:J

    return-void
.end method
