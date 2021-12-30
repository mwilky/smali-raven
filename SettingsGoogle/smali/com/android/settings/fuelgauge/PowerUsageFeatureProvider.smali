.class public interface abstract Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProvider.java"


# virtual methods
.method public abstract getAdvancedUsageScreenInfoString()Ljava/lang/String;
.end method

.method public abstract getBatteryHistory(Landroid/content/Context;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getEarlyWarningSignal(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;
.end method

.method public abstract getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;
.end method

.method public abstract getHideBackgroundUsageTimeList(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResumeChargeIntent()Landroid/content/Intent;
.end method

.method public abstract isChartGraphEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isChartGraphSlotsEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isSmartBatterySupported()Z
.end method

.method public abstract isTypeSystem(I[Ljava/lang/String;)Z
.end method
