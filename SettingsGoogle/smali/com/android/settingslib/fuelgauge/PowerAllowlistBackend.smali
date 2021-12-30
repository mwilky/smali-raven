.class public Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;
.super Ljava/lang/Object;
.source "PowerAllowlistBackend.java"


# static fields
.field private static sInstance:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;


# instance fields
.field private final mAllowlistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mDefaultActiveApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field private final mSysAllowlistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;-><init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAllowlistedApps:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mSysAllowlistedApps:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDefaultActiveApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-virtual {p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;
    .locals 1

    sget-object v0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    :cond_0
    sget-object p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    return-object p0
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PowerAllowlistBackend"

    const-string v0, "Unable to reach IDeviceIdleController"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isAllowlisted(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAllowlisted([Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isDefaultActiveApp(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDefaultActiveApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAppContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSysAllowlisted(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mSysAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public refreshList()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mSysAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDefaultActiveApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mSysAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDefaultActiveApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDefaultActiveApps:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "PowerAllowlistBackend"

    const-string v1, "Unable to reach IDeviceIdleController"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public removeApp(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->mAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PowerAllowlistBackend"

    const-string v0, "Unable to reach IDeviceIdleController"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
