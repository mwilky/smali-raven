.class public final synthetic Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    check-cast p1, Landroid/os/UidBatteryConsumer;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->$r8$lambda$McSNeHtIFvZiTwMOjV36HQDq0M0(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/UidBatteryConsumer;)I

    move-result p0

    return p0
.end method
