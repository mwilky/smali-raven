.class public Lcom/android/server/pm/DynamicCodeLoggingService;
.super Landroid/app/job/JobService;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;,
        Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;
    }
.end annotation


# static fields
.field private static final AUDIT_AVC:I = 0x578

.field private static final AUDIT_WATCHING_JOB_ID:I = 0xc1bb70d

.field private static final AUDIT_WATCHING_PERIOD_MILLIS:J

.field private static final AVC_PREFIX:Ljava/lang/String; = "type=1400 "

.field private static final DEBUG:Z = false

.field private static final EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final IDLE_LOGGING_JOB_ID:I = 0x1ef9cc

.field private static final IDLE_LOGGING_PERIOD_MILLIS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAuditWatchingStopRequested:Z

.field private volatile mIdleLoggingStopRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/DynamicCodeLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/DynamicCodeLoggingService;->AUDIT_WATCHING_PERIOD_MILLIS:J

    nop

    const-string v0, ".*\\bavc: granted \\{ execute(?:_no_trans|) \\} .*\\bpath=(?:\"([^\" ]*)\"|([0-9A-F]+)) .*\\bscontext=u:r:untrusted_app(?:_25|_27)?:.*\\btcontext=u:object_r:app_data_file:.*\\btclass=file\\b.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    iput-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 1

    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/DynamicCodeLoggingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/DynamicCodeLoggingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/pm/DynamicCodeLoggingService;->unhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 2

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/dex/DexManager;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v1

    return-object v1
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x1ef9cc

    invoke-direct {v2, v3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/pm/DynamicCodeLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v4, 0xc1bb70d

    invoke-direct {v2, v4, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/pm/DynamicCodeLoggingService;->AUDIT_WATCHING_PERIOD_MILLIS:J

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method private static unhex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    return v2

    :sswitch_0
    iput-boolean v2, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    new-instance v2, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;-><init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v2}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->start()V

    return v1

    :sswitch_1
    iput-boolean v2, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    new-instance v2, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;-><init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v2}, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->start()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1ef9cc -> :sswitch_1
        0xc1bb70d -> :sswitch_0
    .end sparse-switch
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return v1

    :sswitch_0
    iput-boolean v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    return v1

    :sswitch_1
    iput-boolean v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1ef9cc -> :sswitch_1
        0xc1bb70d -> :sswitch_0
    .end sparse-switch
.end method
