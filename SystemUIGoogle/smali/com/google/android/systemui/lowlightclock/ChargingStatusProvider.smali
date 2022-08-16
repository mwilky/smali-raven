.class public final Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;
.super Ljava/lang/Object;
.source "ChargingStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;,
        Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$Callback;,
        Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;
    }
.end annotation


# instance fields
.field public final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field public final mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

.field public mCallback:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/internal/app/IBatteryStats;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-direct {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iput-object p4, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final reportStatusToCallback()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$Callback;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v1, 0x3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v4}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    iget-object v4, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$Callback;

    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 p0, 0x0

    goto/16 :goto_16

    :cond_6
    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v5, v5, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v5, v5, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    if-ne v5, v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f1303ab

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-static {p0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->-$$Nest$mgetBatteryLevelAsPercentage(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_16

    :cond_9
    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v1}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v1, v1, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_8

    :cond_a
    move v1, v3

    :goto_8
    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f130394

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_16

    :cond_b
    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v6, -0x1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v8}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v1}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_9

    :cond_c
    move v1, v3

    :goto_9
    if-eqz v1, :cond_d

    invoke-interface {v5}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v1

    const-string v5, "ChargingStatusProvider"

    const-string v8, "Error calling IBatteryStats: "

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_a
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_e

    move v1, v2

    goto :goto_b

    :cond_e
    move v1, v3

    :goto_b
    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_11

    iget-object v8, v5, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v8, v8, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq v8, v2, :cond_10

    if-ne v8, v9, :cond_f

    goto :goto_c

    :cond_f
    move v8, v3

    goto :goto_d

    :cond_10
    :goto_c
    move v8, v2

    :goto_d
    if-eqz v8, :cond_11

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v2

    goto :goto_e

    :cond_11
    move v5, v3

    :goto_e
    const v8, 0x7f13039b

    const v10, 0x7f1303a9

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    iget-object v11, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v5, v5, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v5, v11}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getChargingSpeed(Landroid/content/Context;)I

    move-result v5

    goto :goto_f

    :cond_12
    move v5, v3

    :goto_f
    if-eqz v5, :cond_15

    if-eq v5, v9, :cond_13

    if-eqz v1, :cond_20

    goto/16 :goto_15

    :cond_13
    if-eqz v1, :cond_14

    const v5, 0x7f13039d

    goto :goto_12

    :cond_14
    const v5, 0x7f1303aa

    goto :goto_12

    :cond_15
    if-eqz v1, :cond_16

    const v5, 0x7f13039e

    goto :goto_12

    :cond_16
    const v5, 0x7f1303ac

    goto :goto_12

    :cond_17
    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, v5, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v11, v11, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_18

    move v11, v2

    goto :goto_10

    :cond_18
    move v11, v3

    :goto_10
    if-eqz v11, :cond_19

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v2

    goto :goto_11

    :cond_19
    move v5, v3

    :goto_11
    if-eqz v5, :cond_1b

    if-eqz v1, :cond_1a

    const v5, 0x7f13039f

    goto :goto_12

    :cond_1a
    const v5, 0x7f1303ae

    :goto_12
    move v8, v5

    goto :goto_15

    :cond_1b
    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v11, v5, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v11, v11, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1c

    move v11, v2

    goto :goto_13

    :cond_1c
    move v11, v3

    :goto_13
    if-eqz v11, :cond_1d

    invoke-virtual {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v2

    goto :goto_14

    :cond_1d
    move v5, v3

    :goto_14
    if-eqz v5, :cond_1f

    if-eqz v1, :cond_1e

    const v5, 0x7f13039c

    goto :goto_12

    :cond_1e
    const v5, 0x7f1303ad

    goto :goto_12

    :cond_1f
    if-eqz v1, :cond_20

    goto :goto_15

    :cond_20
    move v8, v10

    :goto_15
    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-static {v5}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->-$$Nest$mgetBatteryLevelAsPercentage(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mResources:Landroid/content/res/Resources;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v5, v6, v2

    invoke-virtual {p0, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_21
    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mResources:Landroid/content/res/Resources;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v3

    invoke-virtual {p0, v8, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_16
    check-cast v4, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;

    invoke-virtual {v4, p0, v0}, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;->onChargingStatusChanged(Ljava/lang/String;Z)V

    :cond_22
    return-void
.end method
