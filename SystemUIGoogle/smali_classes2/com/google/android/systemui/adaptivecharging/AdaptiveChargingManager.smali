.class public Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;
.super Ljava/lang/Object;
.source "AdaptiveChargingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AdaptiveChargingManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    return-void
.end method

.method private destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V
    .locals 1

    sget-boolean p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->DEBUG:Z

    const-string v0, "AdaptiveChargingManager"

    if-eqz p0, :cond_0

    const-string p0, "destroyHalInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p1, p2}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "unlinkToDeath failed: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static initHalInterface(Landroid/os/IHwBinder$DeathRecipient;)Lvendor/google/google_battery/V1_1/IGoogleBattery;
    .locals 4

    sget-boolean v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->DEBUG:Z

    const-string v1, "AdaptiveChargingManager"

    if-eqz v0, :cond_0

    const-string v0, "initHalInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->getService()Lvendor/google/google_battery/V1_1/IGoogleBattery;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Lvendor/google/google_battery/V1_1/IGoogleBattery;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "failed to get Google Battery HAL: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isStageActive(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isStageActiveOrEnabled(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isStageActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isStageEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isStageEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method hasAdaptiveChargingFeature()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.feature.ADAPTIVE_CHARGING"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->hasAdaptiveChargingFeature()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "adaptive_charging"

    const-string v1, "adaptive_charging_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adaptive_charging_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
    .locals 5

    new-instance v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;-><init>(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    invoke-static {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->initHalInterface(Landroid/os/IHwBinder$DeathRecipient;)Lvendor/google/google_battery/V1_1/IGoogleBattery;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;-><init>(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    :try_start_0
    invoke-interface {v1, v2}, Lvendor/google/google_battery/V1_0/IGoogleBattery;->getChargingStageAndDeadline(Lvendor/google/google_battery/V1_0/IGoogleBattery$getChargingStageAndDeadlineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AdaptiveChargingManager"

    const-string v4, "Failed to get Adaptive Chaging status: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->destroyHalInterface(Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    invoke-interface {p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    :goto_0
    return-void
.end method
