.class public Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;
.super Ljava/lang/Object;
.source "SmartBatteryDetector.java"


# instance fields
.field private mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mContentResolver:Landroid/content/ContentResolver;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adaptive_battery_management_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v3, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testSmartBatteryTip:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x2

    :goto_3
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;-><init>(I)V

    return-object p0
.end method
