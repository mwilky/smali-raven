.class public final Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;
.super Ljava/lang/Object;
.source "AdaptiveChargingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
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

.method public static destroyHalInterface(Lvendor/google/google_battery/V1_2/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->DEBUG:Z

    const-string v1, "AdaptiveChargingManager"

    if-eqz v0, :cond_0

    const-string v0, "destroyHalInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Lvendor/google/google_battery/V1_2/IGoogleBattery;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "unlinkToDeath failed: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static initHalInterface(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;)Lvendor/google/google_battery/V1_2/IGoogleBattery;
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->DEBUG:Z

    const-string v1, "AdaptiveChargingManager"

    if-eqz v0, :cond_0

    const-string v0, "initHalInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lvendor/google/google_battery/V1_2/IGoogleBattery;->getService()Lvendor/google/google_battery/V1_2/IGoogleBattery;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Lvendor/google/google_battery/V1_2/IGoogleBattery;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
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


# virtual methods
.method public final formatTimeToFull(J)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hma"

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_1
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAdaptiveChargingFeature()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.feature.ADAPTIVE_CHARGING"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
    .locals 4

    new-instance v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;-><init>(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    invoke-static {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->initHalInterface(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;)Lvendor/google/google_battery/V1_2/IGoogleBattery;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;-><init>(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;Lvendor/google/google_battery/V1_2/IGoogleBattery;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;)V

    :try_start_0
    invoke-interface {v1, v2}, Lvendor/google/google_battery/V1_0/IGoogleBattery;->getChargingStageAndDeadline(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "AdaptiveChargingManager"

    const-string v3, "Failed to get Adaptive Chaging status: "

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1, v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->destroyHalInterface(Lvendor/google/google_battery/V1_2/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    invoke-interface {p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    :goto_0
    return-void
.end method
