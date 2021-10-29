.class public final Lcom/android/server/profcollect/ProfcollectForwardingService;
.super Lcom/android/server/SystemService;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;,
        Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;,
        Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;,
        Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;
    }
.end annotation


# static fields
.field private static final BG_PROCESS_PERIOD:J

.field private static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "ProfcollectForwardingService"

.field private static sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;


# instance fields
.field private final mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ProfcollectForwardingService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_PERIOD:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService$1;)V

    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "only one service instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/profcollect/ProfcollectForwardingService;)Lcom/android/server/profcollect/IProfCollectd;
    .locals 1

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/IProfCollectd;)Lcom/android/server/profcollect/IProfCollectd;
    .locals 0

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->tryConnectNativeService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_PERIOD:J

    return-wide v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600()Lcom/android/server/profcollect/ProfcollectForwardingService;
    .locals 1

    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/profcollect/ProfcollectForwardingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->traceOnAppStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->packProfileReport()V

    return-void
.end method

.method private connectNativeService()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "profcollectd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/profcollect/IProfCollectd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/profcollect/IProfCollectd;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService$1;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "ProfcollectForwardingService"

    const-string v3, "Failed to connect profcollectd binder service."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static enabled()Z
    .locals 3

    const-string v0, "profcollect_native_boot"

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.profcollectd.enabled_override"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private getBBProfileId()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getUploaderActionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUploaderEnabledConfig(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private getUploaderPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private packProfileReport()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getUploaderEnabledConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private registerAppLaunchObserver()V
    .locals 3

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    invoke-interface {v1, v2}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method private registerOTAObserver()V
    .locals 2

    new-instance v0, Landroid/os/UpdateEngine;

    invoke-direct {v0}, Landroid/os/UpdateEngine;-><init>()V

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$1;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    return-void
.end method

.method private registerObservers()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerAppLaunchObserver()V

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerOTAObserver()V

    return-void
.end method

.method private serviceHasSupportedTraceProvider()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/profcollect/IProfCollectd;->get_supported_provider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfcollectForwardingService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private traceOnAppStart(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ProfcollectForwardingService"

    iget-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const-string v2, "profcollect_native_boot"

    const-string v3, "applaunch_trace_freq"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    if-ge v2, v1, :cond_2

    :try_start_0
    sget-boolean v3, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracing on app launch event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    const-string v4, "applaunch"

    invoke-interface {v3, v4}, Lcom/android/server/profcollect/IProfCollectd;->trace_once(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private tryConnectNativeService()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v3
.end method


# virtual methods
.method public synthetic lambda$packProfileReport$0$ProfcollectForwardingService()V
    .locals 12

    const-string v0, "ProfcollectForwardingService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getUploaderPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getUploaderActionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    invoke-interface {v4}, Lcom/android/server/profcollect/IProfCollectd;->report()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getBBProfileId()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/com.google.android.apps.internal.betterbug/cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v6, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    new-array v10, v8, [Ljava/nio/file/LinkOption;

    invoke-static {v9, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v8, "Destination directory does not exist, abort upload."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "EXTRA_DESTINATION"

    const-string v11, "PROFCOLLECT"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "EXTRA_PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "EXTRA_PROFILE_PATH"

    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    invoke-interface {v10, v5, v4}, Lcom/android/server/profcollect/IProfCollectd;->copy_report_to_bb(ILjava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v10, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    invoke-interface {v10, v4}, Lcom/android/server/profcollect/IProfCollectd;->delete_report(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v10, "No one to receive upload intent, abort upload."

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->serviceHasSupportedTraceProvider()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerObservers()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;->schedule(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    sget-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProfcollectForwardingService"

    const-string v1, "Profcollect forwarding service start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    return-void
.end method
