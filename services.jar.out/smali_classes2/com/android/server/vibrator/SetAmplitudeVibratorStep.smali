.class public final Lcom/android/server/vibrator/SetAmplitudeVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "SetAmplitudeVibratorStep.java"


# instance fields
.field public mNextOffTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    iput-wide p7, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    :cond_0
    iget-wide v2, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .locals 10

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const-wide/16 v3, 0x0

    move v5, p2

    :cond_0
    if-ge v5, v1, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v7, v6, Landroid/os/vibrator/StepSegment;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_2

    if-ltz v2, :cond_2

    const/4 v5, -0x1

    move v9, v5

    move v5, v2

    move v2, v9

    :cond_2
    if-ne v5, p2, :cond_0

    const-wide/16 p0, 0x1388

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_0
    if-ne v5, v1, :cond_4

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p1

    if-gez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v3, p0

    :cond_4
    return-wide v3
.end method

.method public play()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/32 v7, 0x800000

    const-string v1, "SetAmplitudeVibratorStep"

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/vibrator/Step;->startTime:J

    sub-long v3, v1, v3

    iget-boolean v5, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_0

    cmp-long v5, v3, v9

    if-gez v5, :cond_0

    neg-long v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->turnVibratorBackOn(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    new-array v3, v6, [Lcom/android/server/vibrator/Step;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v11, v0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v13, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v14, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v15, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    move-object v9, v5

    move-wide/from16 v16, v1

    invoke-direct/range {v9 .. v17}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v4, v3, Landroid/os/vibrator/StepSegment;

    if-nez v4, :cond_1

    const-string v1, "VibrationThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring wrong segment for a SetAmplitudeVibratorStep: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_1
    :try_start_2
    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v11

    cmp-long v5, v11, v9

    if-nez v5, :cond_2

    invoke-virtual {v0, v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_3

    iget-wide v4, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    iput-wide v1, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    goto :goto_0

    :cond_3
    iget-wide v5, v0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-wide v11, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    cmp-long v5, v5, v11

    if-ltz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v6, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v5

    cmp-long v9, v5, v9

    if-lez v9, :cond_4

    invoke-virtual {v0, v5, v6}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    :cond_5
    :goto_0
    iget-wide v1, v0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {v3}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v3

    add-long v2, v1, v3

    iget-wide v4, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final startVibrating(J)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final turnVibratorBackOn(J)J
    .locals 6

    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    return-wide p0

    :cond_0
    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    cmp-long p2, v4, v2

    if-lez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    add-long/2addr p0, v0

    return-wide p0
.end method
