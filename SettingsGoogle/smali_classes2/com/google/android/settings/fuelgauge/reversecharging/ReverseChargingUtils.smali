.class final Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingUtils;
.super Ljava/lang/Object;
.source "ReverseChargingUtils.java"


# direct methods
.method static getAvailability(Landroid/content/Context;Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;)I
    .locals 0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isSupportedReverseCharging()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method
