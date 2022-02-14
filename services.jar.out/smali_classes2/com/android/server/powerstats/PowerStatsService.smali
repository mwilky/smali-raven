.class public Lcom/android/server/powerstats/PowerStatsService;
.super Lcom/android/server/SystemService;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/powerstats/PowerStatsService$LocalService;,
        Lcom/android/server/powerstats/PowerStatsService$BinderService;,
        Lcom/android/server/powerstats/PowerStatsService$Injector;
    }
.end annotation


# static fields
.field private static final DATA_STORAGE_SUBDIR:Ljava/lang/String; = "powerstats"

.field private static final DATA_STORAGE_VERSION:I = 0x0

.field private static final DEBUG:Z = false

.field private static final METER_CACHE_FILENAME:Ljava/lang/String; = "meterCache"

.field private static final METER_FILENAME:Ljava/lang/String; = "log.powerstats.meter.0"

.field private static final MODEL_CACHE_FILENAME:Ljava/lang/String; = "modelCache"

.field private static final MODEL_FILENAME:Ljava/lang/String; = "log.powerstats.model.0"

.field private static final RESIDENCY_CACHE_FILENAME:Ljava/lang/String; = "residencyCache"

.field private static final RESIDENCY_FILENAME:Ljava/lang/String; = "log.powerstats.residency.0"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

.field private mContext:Landroid/content/Context;

.field private mDataStoragePath:Ljava/io/File;

.field private final mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

.field private mLooper:Landroid/os/Looper;

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

.field private mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

.field private mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Looper;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method private getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLooper()Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    return-object v0
.end method

.method private getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/StateResidencyResult;",
            ">;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private onBootCompleted()V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createDataStoragePath()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterFilename()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterCacheFilename()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelCacheFilename()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyFilename()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyCacheFilename()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createPowerStatsLogger(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createBatteryTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/BatteryTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createTimerTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/TimerTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start PowerStatsService loggers"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onSystemServicesReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createStatsPullerImpl(Landroid/content/Context;Landroid/power/PowerStatsInternal;)Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    return-void
.end method

.method private readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyMeasurement;",
            ">;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDeleteMeterDataOnBoot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteMeterDataOnBoot()Z

    move-result v0

    return v0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteModelDataOnBoot()Z

    move-result v0

    return v0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteResidencyDataOnBoot()Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->onSystemServicesReady()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->onBootCompleted()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$LocalService;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const-class v1, Landroid/power/PowerStatsInternal;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/powerstats/PowerStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/powerstats/PowerStatsService$BinderService;-><init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService$1;)V

    const-string v1, "powerstats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/powerstats/PowerStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
