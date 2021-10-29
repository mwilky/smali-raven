.class Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveryTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v2, p1, :cond_1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v3, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    invoke-static {v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->access$3300(Lcom/android/server/alarm/AlarmManagerService;I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private updateStatsLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    iput v4, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    iget-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v7, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    :cond_0
    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    iget v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    iget v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v5, :cond_1

    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    iget-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    :cond_1
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->access$1400(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v7, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    iget-object v8, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/ActivityManagerInternal;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    return-void
.end method

.method private updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished all dispatches with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remaining inflights"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remaining #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v4, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v1, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alarmComplete: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->removeMessages(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->access$3408(Lcom/android/server/alarm/AlarmManagerService;)I

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->access$3408(Lcom/android/server/alarm/AlarmManagerService;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spurious timeout of listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->access$3600(Lcom/android/server/alarm/Alarm;)I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v5

    :try_start_0
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$3708(Lcom/android/server/alarm/AlarmManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$3800(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;

    move-result-object v0

    const-string v11, "android.intent.extra.ALARM_COUNT"

    iget v12, v2, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v14, 0x0

    iget-object v15, v2, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual/range {v8 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-wide v7, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    :cond_0
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->access$3508(Lcom/android/server/alarm/AlarmManagerService;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    return-void

    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$3908(Lcom/android/server/alarm/AlarmManagerService;)I

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v8, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, v8, :cond_2

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$4000(Lcom/android/server/alarm/AlarmManagerService;)[J

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->access$4108(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v8

    aput-wide v3, v0, v8

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->access$4100(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_2

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, v7}, Lcom/android/server/alarm/AlarmManagerService;->access$4102(Lcom/android/server/alarm/AlarmManagerService;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0, v1}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v9, 0x3

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v10}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :goto_0
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    nop

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v11, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v12, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v12, v9}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {v0, v10, v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$InFlight;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;J)V

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v11, v9

    iput v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->isBroadcast()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v11, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->access$4200(Lcom/android/server/alarm/AlarmManagerService;I)V

    :cond_4
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v10, :cond_5

    move v10, v9

    goto :goto_1

    :cond_5
    move v10, v7

    :goto_1
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->access$1300(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->access$1300(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    move v7, v9

    goto :goto_2

    :cond_6
    nop

    :goto_2
    if-nez v10, :cond_7

    if-eqz v7, :cond_b

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->access$4300(Lcom/android/server/alarm/Alarm;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget v11, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v8, v11

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_3

    :cond_8
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    :goto_3
    nop

    iget-object v11, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v12, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v8, v11, v12, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v12, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v2, v10, v7}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZ)V

    invoke-interface {v11, v12}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_4

    :cond_9
    iget v8, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_a

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->access$3000(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;

    move-result-object v8

    iget v11, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v8, v11, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v11, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1, v2, v10, v7}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZ)V

    invoke-interface {v8, v11}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_5

    :cond_a
    :goto_4
    nop

    :cond_b
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v11, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v12, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v8, v11, v12, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    :cond_c
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v11, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    add-int/2addr v11, v9

    iput v11, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    iget v11, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v11, :cond_d

    iput v9, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    iput-wide v3, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    goto :goto_6

    :cond_d
    iget v11, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/2addr v11, v9

    iput v11, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    :goto_6
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    add-int/2addr v12, v9

    iput v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-nez v12, :cond_e

    iput v9, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    iput-wide v3, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    goto :goto_7

    :cond_e
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    add-int/2addr v12, v9

    iput v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    :goto_7
    iget v12, v2, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_10

    iget v12, v2, Lcom/android/server/alarm/Alarm;->type:I

    if-nez v12, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v18, v0

    goto :goto_9

    :cond_10
    :goto_8
    iget v12, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/2addr v12, v9

    iput v12, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/2addr v12, v9

    iput v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v9}, Lcom/android/server/alarm/AlarmManagerService;->access$1400(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v14, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v15, v2, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v9, v2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    move-object/from16 v16, v9

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Landroid/app/ActivityManagerInternal;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->access$3408(Lcom/android/server/alarm/AlarmManagerService;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    throw v0
.end method

.method public synthetic lambda$deliverLocked$0$AlarmManagerService$DeliveryTracker(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .locals 4

    iget v0, p4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    invoke-static {p4}, Lcom/android/server/alarm/AlarmManagerService;->access$4300(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1, p4}, Lcom/android/server/alarm/AlarmManagerService;->access$4400(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3, p4}, Lcom/android/server/alarm/AlarmManagerService;->access$3200(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v2, v0

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v2
.end method

.method public synthetic lambda$deliverLocked$1$AlarmManagerService$DeliveryTracker(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .locals 4

    iget v0, p4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1, p4}, Lcom/android/server/alarm/AlarmManagerService;->access$4400(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3, p4}, Lcom/android/server/alarm/AlarmManagerService;->access$3200(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v2, v0

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v2
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$3508(Lcom/android/server/alarm/AlarmManagerService;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
