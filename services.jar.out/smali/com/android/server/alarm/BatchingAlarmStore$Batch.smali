.class public final Lcom/android/server/alarm/BatchingAlarmStore$Batch;
.super Ljava/lang/Object;
.source "BatchingAlarmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/BatchingAlarmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Batch"
.end annotation


# instance fields
.field public final mAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field public mEnd:J

.field public mFlags:I

.field public mStart:J

.field public final synthetic this$0:Lcom/android/server/alarm/BatchingAlarmStore;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/BatchingAlarmStore;Lcom/android/server/alarm/Alarm;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    iget v0, p2, Lcom/android/server/alarm/Alarm;->flags:I

    iput v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/alarm/BatchingAlarmStore;->-$$Nest$sfgetsIncreasingTimeOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    rsub-int/lit8 v0, v0, 0x0

    sub-int/2addr v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    :cond_2
    iget v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    iget p1, p1, Lcom/android/server/alarm/Alarm;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    return v1
.end method

.method public canHold(JJ)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long p0, p0, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000004L

    move-object v2, p1

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public get(I)Lcom/android/server/alarm/Alarm;
    .locals 0

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/Alarm;

    return-object p0
.end method

.method public hasWakeups()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    iget-boolean v3, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v5, v4

    move-wide v3, v2

    move v2, v1

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-static {v8}, Lcom/android/server/alarm/BatchingAlarmStore;->-$$Nest$fgetmOnAlarmClockRemoved(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-static {v8}, Lcom/android/server/alarm/BatchingAlarmStore;->-$$Nest$fgetmOnAlarmClockRemoved(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    const-string v8, "Removed TIME_TICK alarm"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-lez v8, :cond_3

    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v3

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-gez v8, :cond_4

    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v5

    :cond_4
    iget v7, v7, Lcom/android/server/alarm/Alarm;->flags:I

    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iput-wide v3, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    iput-wide v5, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    iput v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    :cond_6
    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    if-eqz v1, :cond_0

    const-string v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
