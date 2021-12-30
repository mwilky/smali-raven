.class public Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryUsageStatsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/os/BatteryUsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatteryStatsManager:Landroid/os/BatteryStatsManager;

.field private final mIncludeBatteryHistory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/os/BatteryStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mIncludeBatteryHistory:Z

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/os/BatteryUsageStats;
    .locals 2

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mIncludeBatteryHistory:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BatteryUsageStatsLoader"

    const-string v1, "loadInBackground() for getBatteryUsageStats()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/os/BatteryUsageStats$Builder;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->loadInBackground()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Landroid/os/BatteryUsageStats;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/BatteryUsageStats;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->onDiscardResult(Landroid/os/BatteryUsageStats;)V

    return-void
.end method
