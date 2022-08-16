.class Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;
.super Ljava/lang/Object;
.source "PowerUsageBase.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryUsageStatsLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/os/BatteryUsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private mRefreshType:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    const-string/jumbo p1, "refresh_type"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->mRefreshType:I

    new-instance p1, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "include_history"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;-><init>(Landroid/content/Context;Z)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/os/BatteryUsageStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/os/BatteryUsageStats;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->-$$Nest$mcloseBatteryUsageStatsIfNeeded(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    iget p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->mRefreshType:I

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onLoadFinished(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/os/BatteryUsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/os/BatteryUsageStats;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/os/BatteryUsageStats;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
