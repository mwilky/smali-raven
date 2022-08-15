.class public Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessEvent"
.end annotation


# instance fields
.field public adjustmentFlags:I

.field public brightness:F

.field public displayId:I

.field public flags:I

.field public hbmMax:F

.field public hbmMode:I

.field public lux:F

.field public preThresholdBrightness:F

.field public preThresholdLux:F

.field public final reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field public recommendedBrightness:F

.field public thermalMax:F

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessReason-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iput p2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessReason-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V
    .locals 2

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    iget-wide v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    iget p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    return-void
.end method

.method public equalsMainData(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final flagsToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_set "

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "rbc "

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "invalid_lux "

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_3

    const-string v2, "doze_scale "

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "BrightnessEvent: disp="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", brt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    const-string v1, "(user_set)"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rcmdBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", preBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", lux="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", preLux="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    invoke-static {p1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thrmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", flags="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flagsToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
