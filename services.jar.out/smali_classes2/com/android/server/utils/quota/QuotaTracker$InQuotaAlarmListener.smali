.class Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;
.super Ljava/lang/Object;
.source "QuotaTracker.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/QuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InQuotaAlarmListener"
.end annotation


# instance fields
.field private final mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

.field private mTriggerTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-direct {p1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Lcom/android/server/utils/quota/QuotaTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    return-void
.end method

.method private setNextAlarmLocked()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v3, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x2bf20

    sub-long v0, v3, v0

    cmp-long v0, v9, v0

    if-ltz v0, :cond_0

    cmp-long v0, v3, v9

    if-gez v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    const/4 v4, 0x3

    invoke-static {}, Lcom/android/server/utils/quota/QuotaTracker;->access$300()Ljava/lang/String;

    move-result-object v7

    move-wide v5, v9

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleAlarm(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-wide v9, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker;->cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-wide v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    :goto_0
    return-void
.end method


# virtual methods
.method addAlarmLocked(Lcom/android/server/utils/quota/Uptc;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Lcom/android/server/utils/quota/Uptc;)Z

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    return-void
.end method

.method clearLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker;->cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    return-void
.end method

.method dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    const-string v0, "In quota alarms:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NOT WAITING"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/utils/quota/Uptc;

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

    iget-wide v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mTriggerTimeElapsed:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v3

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

    check-cast v6, Lcom/android/server/utils/quota/Uptc;

    const-wide v7, 0x10b00000001L

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/utils/quota/Uptc;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

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

.method public synthetic lambda$onAlarm$0$QuotaTracker$InQuotaAlarmListener(Landroid/util/Pair;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/utils/quota/Uptc;

    iget v1, v1, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/utils/quota/Uptc;

    iget-object v2, v2, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/utils/quota/Uptc;

    iget-object v3, v3, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAlarm()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v0, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v4, v4, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v4}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;Landroid/util/Pair;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeAlarmLocked(Lcom/android/server/utils/quota/Uptc;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Lcom/android/server/utils/quota/Uptc;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker;->cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    :cond_1
    :goto_0
    return-void
.end method

.method removeAlarmsLocked(I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/utils/quota/Uptc;

    iget v4, v3, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    :cond_2
    return-void
.end method

.method removeAlarmsLocked(ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/utils/quota/Uptc;

    iget v4, v3, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne p1, v4, :cond_0

    iget-object v4, v3, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->mAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->setNextAlarmLocked()V

    :cond_2
    return-void
.end method
