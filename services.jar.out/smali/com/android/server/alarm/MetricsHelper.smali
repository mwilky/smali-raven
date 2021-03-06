.class Lcom/android/server/alarm/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$registerPuller$0(Lcom/android/server/alarm/Alarm;)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$1(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    return v0
.end method

.method static synthetic lambda$registerPuller$10(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$11(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$registerPuller$2(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$3(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$4(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$5(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$6(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$7(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$8(JLcom/android/server/alarm/Alarm;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    add-long/2addr v2, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerPuller$9(Lcom/android/server/alarm/Alarm;)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static pushAlarmBatchDelivered(II)V
    .locals 1

    const/16 v0, 0x16f

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method static pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V
    .locals 14

    iget v1, p0, Lcom/android/server/alarm/Alarm;->uid:I

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    iget-boolean v7, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    iget-wide v10, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move v10, v3

    :goto_3
    iget v0, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    invoke-static {v0}, Lcom/android/server/alarm/MetricsHelper;->reasonToStatsReason(I)I

    move-result v11

    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v12

    invoke-static {p1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v13

    const/16 v0, 0x170

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, v12

    move v9, v13

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZZZZZIZI)V

    return-void
.end method

.method private static reasonToStatsReason(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public synthetic lambda$registerPuller$12$MetricsHelper(Ljava/util/function/Supplier;ILjava/util/List;)I
    .locals 21

    move/from16 v15, p2

    const/16 v0, 0x277a

    if-ne v15, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v12, p0

    iget-object v11, v12, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmStore;

    nop

    invoke-interface {v0}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v2

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v3

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v4

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v5

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v6

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v7

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v8

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v9

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v10

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v13, v14}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v16

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v17

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v18

    sget-object v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v1, p2

    move-object/from16 v20, v11

    move/from16 v11, v16

    move/from16 v12, v17

    move-wide/from16 v16, v13

    move/from16 v13, v18

    move/from16 v14, v19

    :try_start_1
    invoke-static/range {v1 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p3

    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    monitor-exit v20

    return v1

    :catchall_0
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v20, v11

    move-wide/from16 v16, v13

    :goto_0
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerPuller(Ljava/util/function/Supplier;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/alarm/AlarmStore;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    nop

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;)V

    const/16 v3, 0x277a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method
