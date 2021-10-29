.class final Lcom/android/server/vibrator/VibrationThread$PerformStep;
.super Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformStep"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 14

    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/android/server/vibrator/VibrationThread$PerformStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    move-wide/from16 v10, p2

    move-wide/from16 v12, p7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method

.method private replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    iget v2, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->segmentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->segmentIndex:I

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget v2, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->segmentIndex:I

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v2, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v2
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "PerformStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->segmentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v3, v2, Landroid/os/vibrator/PrebakedSegment;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const-string v3, "VibrationThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a PerformStep: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibrationThread$PerformStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_0
    :try_start_1
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/PrebakedSegment;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v5}, Lcom/android/server/vibrator/VibrationThread;->access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/Vibration;->getFallback(I)Landroid/os/VibrationEffect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v7}, Lcom/android/server/vibrator/VibrationThread;->access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/vibrator/VibratorController;->on(Landroid/os/vibrator/PrebakedSegment;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->mVibratorOnResult:J

    iget-wide v6, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->mVibratorOnResult:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    invoke-virtual {v3}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v6

    if-eqz v6, :cond_1

    instance-of v6, v5, Landroid/os/VibrationEffect$Composed;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-wide v8, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->startTime:J

    iget-object v10, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object v4, v5

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibrationThread$PerformStep;->replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;

    move-result-object v11

    iget v12, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->segmentIndex:I

    iget-wide v13, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->vibratorOffTimeout:J

    invoke-static/range {v7 .. v14}, Lcom/android/server/vibrator/VibrationThread;->access$500(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->play()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->getVibratorOnDuration()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/vibrator/VibrationThread$PerformStep;->mVibratorOnResult:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :cond_1
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibrationThread$PerformStep;->nextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method
