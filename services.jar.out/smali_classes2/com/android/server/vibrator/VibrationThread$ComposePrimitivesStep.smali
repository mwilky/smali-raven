.class final Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;
.super Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComposePrimitivesStep"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 14

    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

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


# virtual methods
.method public play()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "ComposePrimitivesStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getCompositionSizeMax()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->segmentIndex:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    nop

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->segmentIndex:I

    :goto_1
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v7, v6, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "VibrationThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring wrong segment for a ComposePrimitivesStep: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->segmentIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/vibrator/PrimitiveSegment;

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v7}, Lcom/android/server/vibrator/VibrationThread;->access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->mVibratorOnResult:J

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;->nextSteps(I)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method
