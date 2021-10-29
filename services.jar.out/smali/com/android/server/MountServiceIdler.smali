.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# static fields
.field private static MOUNT_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/MountServiceIdler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    const/16 v0, 0x328

    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountServiceIdler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/MountServiceIdler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method private static offsetFromTodayMidnight(II)Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .locals 13

    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v9, v3

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v9, v5

    if-gez v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v7, v9

    :goto_0
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget v11, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v12, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v2, v11, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v2

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return v1
.end method
