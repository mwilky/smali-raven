.class Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;
.super Ljava/lang/Object;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldShowBatteryAttributionList(Landroid/content/Context;)Z
    .locals 3

    new-instance p0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string p1, "screen.full.display"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide p0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    cmpl-double p0, p0, v1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
