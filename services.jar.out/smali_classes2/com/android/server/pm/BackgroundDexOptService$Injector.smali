.class final Lcom/android/server/pm/BackgroundDexOptService$Injector;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/BackgroundDexOptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataDir:Ljava/io/File;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDataDir:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting thread:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackgroundDexOptService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentThermalStatus()I
    .locals 0

    const-string p0, "thermalservice"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x3

    return p0
.end method

.method public getDataDirStorageLowBytes()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDataDir:Ljava/io/File;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataDirUsableSpace()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDataDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDexManager()Lcom/android/server/pm/dex/DexManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object p0
.end method

.method public getDexOptHelper()Lcom/android/server/pm/DexOptHelper;
    .locals 1

    new-instance v0, Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/DexOptHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method public getDexOptThermalCutoff()I
    .locals 1

    const-string p0, "dalvik.vm.dexopt.thermal-cutoff"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDowngradeUnusedAppsThresholdInMillis()J
    .locals 2

    const-string p0, "pm.dexopt.downgrade_after_inactive_days"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SysProp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackgroundDexOptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    return-object p0
.end method

.method public getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public getPinnerService()Lcom/android/server/PinnerService;
    .locals 0

    const-class p0, Lcom/android/server/PinnerService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PinnerService;

    return-object p0
.end method

.method public isBackgroundDexOptDisabled()Z
    .locals 1

    const-string p0, "pm.dexopt.disable_bg_dexopt"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBatteryLevelLow()Z
    .locals 0

    const-class p0, Landroid/os/BatteryManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result p0

    return p0
.end method

.method public supportSecondaryDex()Z
    .locals 1

    const-string p0, "dalvik.vm.dexopt.secondary"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
