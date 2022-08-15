.class public Lcom/android/server/alarm/BatchingAlarmStore;
.super Ljava/lang/Object;
.source "BatchingAlarmStore.java"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/BatchingAlarmStore$Batch;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BatchingAlarmStore"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final sBatchOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;"
        }
    .end annotation
.end field

.field public static final sIncreasingTimeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;"
        }
    .end annotation
.end field

.field public mOnAlarmClockRemoved:Ljava/lang/Runnable;

.field public mSize:I

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;


# direct methods
.method public static synthetic $r8$lambda$C4B0m32nDPh6fLbATXI2H_fQ9GU(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J
    .locals 2

    invoke-static {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->lambda$static$0(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAlarmClockRemoved(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsIncreasingTimeOrder()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sIncreasingTimeOrder:Ljava/util/Comparator;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sBatchOrder:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sIncreasingTimeOrder:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "GET_COUNT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-void
.end method

.method public static addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sBatchOrder:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/BatchingAlarmStore;->insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V

    iget p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    return-void
.end method

.method public addAll(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/BatchingAlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public asList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final attemptCoalesce(JJ)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    iget v3, v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->canHold(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 3

    const-string v0, "Pending alarm batches: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(C)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    const-wide v3, 0x20b00000013L

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCount(Ljava/util/function/Predicate;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    move v6, v3

    :goto_0
    invoke-virtual {v5}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v4
.end method

.method public getNextDeliveryTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
    .locals 4

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    iget v1, v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v2

    iget v3, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextWakeupDeliveryTime()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-virtual {v0}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->hasWakeups()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V
    .locals 4

    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/BatchingAlarmStore;->attemptCoalesce(JJ)I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;-><init>(Lcom/android/server/alarm/BatchingAlarmStore;Lcom/android/server/alarm/Alarm;)V

    invoke-static {v0, v1}, Lcom/android/server/alarm/BatchingAlarmStore;->addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-virtual {v1, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->add(Lcom/android/server/alarm/Alarm;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/android/server/alarm/BatchingAlarmStore;->addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final rebatchAllAlarms()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/alarm/BatchingAlarmStore;->insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 4
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

    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-virtual {v2, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    invoke-virtual {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->rebatchAllAlarms()V

    :cond_2
    return-object v0
.end method

.method public removePendingAlarms(J)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    iget-wide v3, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    return-object v0
.end method

.method public setAlarmClockRemovalListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    return p0
.end method

.method public updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;->updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->rebatchAllAlarms()V

    :cond_2
    return v2
.end method
