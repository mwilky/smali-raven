.class Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;
.super Landroid/database/ContentObserver;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryContentChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvancedBatteryUsage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->access$102(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;Z)Z

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->restartBatteryStatsLoader(I)V

    return-void
.end method
