.class final Lcom/google/android/settings/fuelgauge/BatteryUsageContract;
.super Ljava/lang/Object;
.source "BatteryUsageContract.java"


# static fields
.field static final KEYS_BATTERY_USAGE_STATE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "userId"

    const-string v1, "packageName"

    const-string v2, "percentage"

    const-string v3, "foregroundElapsedTime"

    const-string v4, "backgroundElapsedTime"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/fuelgauge/BatteryUsageContract;->KEYS_BATTERY_USAGE_STATE:[Ljava/lang/String;

    return-void
.end method
