.class public final synthetic Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/power/PowerUI$Receiver;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerUI$Receiver;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iput-boolean p2, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda1;->f$1:Z

    iput p3, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iget-boolean v5, v0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda1;->f$1:Z

    iget v6, v0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda1;->f$2:I

    iget-object v0, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v1}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v4

    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    const-string v3, "PowerUI"

    if-eqz v2, :cond_0

    const-string v7, "evaluating which notification to show"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "using hybrid"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->refreshEstimateIfNeeded()Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v1

    new-instance v15, Lcom/android/systemui/power/BatteryStateSnapshot;

    move-object v2, v15

    iget v3, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget v7, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iget-object v9, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v8, v9, v8

    aget v9, v9, v14

    iget-wide v10, v1, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    iget-wide v12, v1, Lcom/android/settingslib/fuelgauge/Estimate;->averageDischargeTime:J

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v14}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v16

    move-object/from16 v20, v15

    move-wide/from16 v14, v16

    move-object/from16 p0, v2

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v2}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v16

    iget-boolean v1, v1, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v1}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningEnabled()Z

    move-result v19

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v19}, Lcom/android/systemui/power/BatteryStateSnapshot;-><init>(IZZIIIIJJJJZZ)V

    move-object/from16 v1, v20

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo v1, "using standard"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Lcom/android/systemui/power/BatteryStateSnapshot;

    move-object v2, v1

    iget v3, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget v7, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iget-object v9, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v8, v9, v8

    aget v9, v9, v14

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v15, -0x1

    move-wide v14, v15

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v2 .. v19}, Lcom/android/systemui/power/BatteryStateSnapshot;-><init>(IZZIIIIJJJJZZ)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/power/BatteryStateSnapshot;->isHybrid:Z

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateSnapshot(Lcom/android/systemui/power/BatteryStateSnapshot;)V

    iget-object v1, v0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->maybeShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V

    return-void
.end method
