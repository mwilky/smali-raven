.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
.super Landroid/os/Binder;
.source "LocationTimeZoneManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationTimeZoneService"

.field private static final BLOCKING_OP_WAIT_DURATION_MILLIS:J

.field static final TAG:Ljava/lang/String; = "LocationTZDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

.field private final mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

.field private final mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field private final mSharedLock:Ljava/lang/Object;

.field private final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method public static synthetic $r8$lambda$-Dq9GOsbIl6svrOUawUoaEUsIvo(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->restartIfRequiredOnDomainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$ENyxT5EiWJnjACgE_Z9dPQiZBOY(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$O2dujrvJfJ0Eoz18kempr1qIkRM(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->handleServiceConfigurationChangedOnMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$lzWGRNsK4GL2kEQCjyPMT61aLcM(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const/4 v1, 0x0

    const-string v2, "primary"

    const-string v3, "android.service.timezone.PrimaryLocationTimeZoneProviderService"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const/4 v1, 0x1

    const-string v2, "secondary"

    const-string v3, "android.service.timezone.SecondaryLocationTimeZoneProviderService"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    const-string v0, "LocationTimeZoneService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/location/ThreadingDomain;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static debugLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LocationTZDetector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private enforceManageTimeZoneDetectorPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string v2, "manage time and time zone detection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleServiceConfigurationChangedOnMainThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static infoLog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LocationTZDetector"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$handleProviderTestCommand$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private restartIfRequiredOnDomainThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startInternal(Z)V
    .locals 4

    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private startOnDomainThread()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Not starting location_time_zone_manager: it is disabled in service config"

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    move-result-object v2

    new-instance v3, Lcom/android/server/timezonedetector/location/ControllerImpl;

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/timezonedetector/location/ControllerImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    new-instance v4, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-direct {v4, v5, v6, v3}, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    new-instance v5, Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;

    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-direct {v5, v6}, Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/timezonedetector/location/ControllerImpl;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;)V

    iput-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    iput-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopOnDomainThread()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;->destroy()V

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mEnvironment:Lcom/android/server/timezonedetector/location/ControllerEnvironmentImpl;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static warnLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "LocationTZDetector"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationTZDetector"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "LocationTimeZoneManagerService:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Primary provider config:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mPrimaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Secondary provider config:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSecondaryProviderConfig:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v2, :cond_1

    const-string v2, "{Stopped}"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0, p3}, Lcom/android/server/timezonedetector/location/ControllerImpl;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method handleProviderTestCommand(ILcom/android/server/timezonedetector/location/TestCommand;)Landroid/os/Bundle;
    .locals 6

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertNotCurrentThread()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Landroid/os/RemoteCallback;ILcom/android/server/timezonedetector/location/TestCommand;)V

    invoke-virtual {v3, v4}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    :try_start_0
    sget-wide v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    return-object v3

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Command did not complete in time"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public synthetic lambda$getStateForTests$1$LocationTimeZoneManagerService()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$handleProviderTestCommand$3$LocationTimeZoneManagerService(Landroid/os/RemoteCallback;ILcom/android/server/timezonedetector/location/TestCommand;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p2, p3, p1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->handleProviderTestCommand(ILcom/android/server/timezonedetector/location/TestCommand;Landroid/os/RemoteCallback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setProviderStateRecordingEnabled$0$LocationTimeZoneManagerService(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneDetectorController:Lcom/android/server/timezonedetector/location/ControllerImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/location/ControllerImpl;->setProviderStateRecordingEnabled(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method onSystemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method onSystemThirdPartyAppsCanStart()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startInternal(Z)V

    return-void
.end method

.method setProviderStateRecordingEnabled(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Z)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    return-void
.end method

.method start()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startInternal(Z)V

    return-void
.end method

.method stop()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->enforceManageTimeZoneDetectorPermission()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V

    return-void
.end method
