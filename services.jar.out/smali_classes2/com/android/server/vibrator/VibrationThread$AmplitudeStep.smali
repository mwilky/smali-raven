.class final Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;
.super Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AmplitudeStep"
.end annotation


# instance fields
.field private mNextOffTime:J

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    iput-wide p7, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    return-void
.end method

.method private getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .locals 9

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    move v3, p2

    const-wide/16 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v7

    add-long/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1

    if-ltz v2, :cond_1

    move v3, v2

    const/4 v2, -0x1

    :cond_1
    if-ne v3, p2, :cond_2

    const-wide/16 v7, 0x3e8

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    return-wide v7

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    if-ne v3, v1, :cond_4

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v6

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v6}, Lcom/android/server/vibrator/VibrationThread;->access$1000(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    :cond_4
    return-wide v4
.end method

.method private startVibrating(J)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationThread;->access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private turnVibratorBackOn(J)J
    .locals 7

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->segmentIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v2, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->vibratorOffTimeout:J

    return-wide v2

    :cond_0
    add-long/2addr v0, p1

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->startVibrating(J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mVibratorOnResult:J

    iget-wide v5, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mVibratorOnResult:J

    cmp-long v2, v5, v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->changeAmplitude(F)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/16 v5, 0x3e8

    add-long/2addr v2, v5

    return-wide v2
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    const-wide/32 v8, 0x800000

    const-string v0, "AmplitudeStep"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v10, v0

    iget-wide v0, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->startTime:J

    sub-long v12, v10, v0

    iget-boolean v0, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mVibratorCallbackReceived:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    cmp-long v0, v12, v2

    if-gez v0, :cond_0

    neg-long v2, v12

    invoke-direct {v7, v2, v3}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->turnVibratorBackOn(J)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    new-array v0, v1, [Lcom/android/server/vibrator/VibrationThread$Step;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;

    iget-object v15, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-wide v3, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->startTime:J

    iget-object v5, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v6, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v14, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->segmentIndex:I

    iget-wide v8, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    move/from16 v20, v14

    move-object v14, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-direct/range {v14 .. v22}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    iget v4, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->segmentIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v4, v0, Landroid/os/vibrator/StepSegment;

    if-nez v4, :cond_1

    const-string v2, "VibrationThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring wrong segment for a AmplitudeStep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v1}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_1
    :try_start_2
    move-object v4, v0

    check-cast v4, Landroid/os/vibrator/StepSegment;

    move-object v8, v4

    invoke-virtual {v8}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    invoke-virtual {v7, v1}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_2
    :try_start_3
    invoke-virtual {v8}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    move v9, v1

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-nez v1, :cond_3

    iget-wide v1, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->vibratorOffTimeout:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->stopVibrating()V

    iput-wide v10, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    goto :goto_0

    :cond_3
    iget-wide v4, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->startTime:J

    iget-wide v14, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    cmp-long v1, v4, v14

    if-ltz v1, :cond_4

    iget-object v1, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->segmentIndex:I

    invoke-direct {v7, v1, v4}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_4

    invoke-direct {v7, v4, v5}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->startVibrating(J)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mVibratorOnResult:J

    add-long v1, v10, v4

    const-wide/16 v14, 0x3e8

    add-long/2addr v1, v14

    iput-wide v1, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    :cond_4
    invoke-virtual {v7, v9}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->changeAmplitude(F)V

    :cond_5
    :goto_0
    iget-wide v1, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->startTime:J

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v3

    add-long v14, v1, v3

    iget-wide v4, v7, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-wide v2, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :catchall_0
    move-exception v0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public shouldPlayWhenVibratorComplete(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mVibratorCallbackReceived:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    :cond_0
    iget-wide v2, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->mNextOffTime:J

    iget-wide v4, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->startTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
