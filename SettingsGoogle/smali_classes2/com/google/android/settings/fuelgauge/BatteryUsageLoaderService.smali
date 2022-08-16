.class public Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService;
.super Landroidx/core/app/JobIntentService;
.source "BatteryUsageLoaderService.java"


# static fields
.field private static final JOB_INTENT:Landroid/content/Intent;

.field static mController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$Z4wWan3VY2tJ_za9IdfsmPbCq5Q(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService;->lambda$enqueueWork$0(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.LOAD_BATTERY_USAGE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService;->JOB_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method static enqueueWork(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$enqueueWork$0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BatteryUsageLoaderService"

    const-string v1, "loadUsageDataSafely() in the AsyncTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService;->loadUsageDataSafely(Landroid/content/Context;)V

    return-void
.end method

.method static loadUsageData(Landroid/content/Context;)V
    .locals 11

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->isContentProviderEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BatteryUsageLoaderService"

    if-nez v0, :cond_0

    const-string p0, "battery usage content provider is disabled!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    const-class v4, Landroid/os/BatteryStatsManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStatsManager;

    invoke-virtual {v4, v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "getBatteryUsageStats() returns null content"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService;->mController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    :cond_2
    const/4 v5, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0, v5}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getBatteryEntryList(Landroid/os/BatteryUsageStats;Z)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string v6, "getBatteryEntryList() returns null or empty content"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "getBatteryUsageStats() in %d/ms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4, v0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->sendBatteryEntryData(Landroid/content/Context;Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "BatteryUsageStats.close() failed"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method private static loadUsageDataSafely(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService;->loadUsageData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUsageData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryUsageLoaderService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BatteryUsageLoaderService"

    const-string v0, "onHandleWork: load usage data"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/BatteryUsageLoaderService;->loadUsageDataSafely(Landroid/content/Context;)V

    return-void
.end method
