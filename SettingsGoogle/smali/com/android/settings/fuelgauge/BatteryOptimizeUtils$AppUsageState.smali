.class public final enum Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;
.super Ljava/lang/Enum;
.source "BatteryOptimizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppUsageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

.field public static final enum OPTIMIZED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

.field public static final enum RESTRICTED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

.field public static final enum UNKNOWN:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

.field public static final enum UNRESTRICTED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->UNKNOWN:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    const-string v3, "RESTRICTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->RESTRICTED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    const-string v5, "UNRESTRICTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->UNRESTRICTED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    const-string v7, "OPTIMIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->OPTIMIZED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->$VALUES:[Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;
    .locals 1

    const-class v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->$VALUES:[Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    invoke-virtual {v0}, [Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    return-object v0
.end method
