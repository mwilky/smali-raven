.class abstract Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
.super Lcom/android/server/vibrator/VibrationThread$Step;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SingleVibratorStep"
.end annotation


# instance fields
.field public final controller:Lcom/android/server/vibrator/VibratorController;

.field public final effect:Landroid/os/VibrationEffect$Composed;

.field mVibratorCallbackReceived:Z

.field mVibratorOnResult:J

.field public final segmentIndex:I

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;

.field public final vibratorOffTimeout:J


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibrationThread$Step;-><init>(Lcom/android/server/vibrator/VibrationThread;J)V

    iput-object p4, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iput-object p5, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iput p6, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->segmentIndex:I

    iput-wide p7, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->vibratorOffTimeout:J

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/vibrator/VibrationThread$Step;

    new-instance v9, Lcom/android/server/vibrator/VibrationThread$CompleteStep;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v7, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->vibratorOffTimeout:J

    const/4 v5, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/VibrationThread$CompleteStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JZLcom/android/server/vibrator/VibratorController;J)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelImmediately()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->vibratorOffTimeout:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->stopVibrating()V

    :cond_0
    return-void
.end method

.method changeAmplitude(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    return-void
.end method

.method public getVibratorOnDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->mVibratorOnResult:J

    return-wide v0
.end method

.method public nextSteps(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->mVibratorOnResult:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->mVibratorOnResult:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    move-object v4, p0

    move-wide v5, v0

    move-wide v7, v2

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public nextSteps(JJI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->segmentIndex:I

    add-int v5, v1, p5

    move-wide v1, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibrationThread;->access$500(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/vibrator/VibrationThread$Step;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public shouldPlayWhenVibratorComplete(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->mVibratorCallbackReceived:Z

    or-int/2addr v3, v0

    iput-boolean v3, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->mVibratorCallbackReceived:Z

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->vibratorOffTimeout:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public skipToNextSteps(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    iget-wide v1, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->startTime:J

    iget-wide v3, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->vibratorOffTimeout:J

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method stopVibrating()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->off()V

    return-void
.end method
