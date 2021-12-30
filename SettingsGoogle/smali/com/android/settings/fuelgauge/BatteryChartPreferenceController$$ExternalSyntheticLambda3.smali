.class public final synthetic Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    invoke-static {v0, p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->$r8$lambda$KLwUtu4q63inOfv6_K1ba4Sbi5E(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/List;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V

    return-void
.end method
