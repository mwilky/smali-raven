.class public Lcom/android/server/usage/UsageStatsIdleService;
.super Landroid/app/job/JobService;
.source "UsageStatsIdleService.java"


# static fields
.field private static final PRUNE_JOB_ID:I = 0x2090c0e3

.field private static final UPDATE_MAPPINGS_JOB_ID:I = 0x209114c6

.field private static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static cancelJob(Landroid/content/Context;I)V
    .locals 1

    const v0, 0x2090c0e3

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;I)V

    return-void
.end method

.method private static cancelJobInternal(Landroid/content/Context;I)V
    .locals 1

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method static cancelUpdateMappingsJob(Landroid/content/Context;)V
    .locals 1

    const v0, 0x209114c6

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;I)V

    return-void
.end method

.method static scheduleJob(Landroid/content/Context;I)V
    .locals 5

    const v0, 0x2090c0e3

    add-int/2addr v0, p1

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/usage/UsageStatsIdleService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    const-string v3, "user_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V

    return-void
.end method

.method private static scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V
    .locals 3

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method static scheduleUpdateMappingsJob(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/server/usage/UsageStatsIdleService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x209114c6

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartJob$0$UsageStatsIdleService(Landroid/app/job/JobParameters;I)V
    .locals 3

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const v2, 0x209114c6

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->updatePackageMappingsData()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/usage/UsageStatsIdleService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {v0, p2}, Landroid/app/usage/UsageStatsManagerInternal;->pruneUninstalledPackagesData(I)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/usage/UsageStatsIdleService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const v3, 0x209114c6

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v2, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
