.class final Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;
.super Lcom/android/server/vibrator/VibrationThread$Step;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartVibrateStep"
.end annotation


# instance fields
.field public final currentIndex:I

.field private mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;JLandroid/os/CombinedVibration$Sequential;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibrationThread$Step;-><init>(Lcom/android/server/vibrator/VibrationThread;J)V

    iput-object p4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    iput p5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->currentIndex:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Sequential;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLandroid/os/CombinedVibration$Sequential;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)Lcom/android/server/vibrator/VibrationThread$Step;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v0

    return-object v0
.end method

.method private createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
    .locals 3

    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Mono;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Stereo;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private nextStep()Lcom/android/server/vibrator/VibrationThread$Step;
    .locals 12

    iget v0, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v1}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v9, v1, v7

    new-instance v11, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    move-object v1, v11

    move-wide v3, v9

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v11
.end method

.method private startVibrating(Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;Ljava/util/List;)J
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    new-array v7, v4, [Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v8, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v8}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->vibratorIdAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect$Composed;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v9, v16

    invoke-static/range {v8 .. v15}, Lcom/android/server/vibrator/VibrationThread;->access$500(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    aget-object v0, v7, v8

    invoke-direct {v1, v0, v3}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->startVibrating(Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;Ljava/util/List;)J

    move-result-wide v5

    return-wide v5

    :cond_2
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->getRequiredSyncCapabilities()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->getVibratorIds()[I

    move-result-object v15

    invoke-interface {v0, v8, v9, v15}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->prepareSyncedVibration(J[I)Z

    move-result v0

    move v11, v0

    array-length v0, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_6

    aget-object v9, v7, v8

    invoke-direct {v1, v9, v3}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->startVibrating(Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;Ljava/util/List;)J

    move-result-wide v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v20, v18

    move-object v15, v7

    move/from16 v18, v8

    move-wide/from16 v7, v20

    cmp-long v19, v7, v5

    if-gez v19, :cond_5

    const-wide/16 v18, -0x1

    move-wide/from16 v13, v18

    if-eqz v11, :cond_3

    if-nez v12, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->cancelSyncedVibration()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_3
    cmp-long v0, v13, v5

    if-gez v0, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    :goto_2
    if-ltz v0, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-wide v18

    :cond_5
    :try_start_2
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    move-wide/from16 v13, v19

    add-int/lit8 v8, v18, 0x1

    move-object v7, v15

    goto :goto_1

    :cond_6
    move-object v15, v7

    if-eqz v11, :cond_7

    cmp-long v0, v13, v5

    if-lez v0, :cond_7

    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v7}, Lcom/android/server/vibrator/VibrationThread;->access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {v0, v7, v8}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->triggerSyncedVibration(J)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_4
    nop

    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    :try_start_3
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->cancelSyncedVibration()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_6

    :cond_8
    cmp-long v0, v13, v5

    if-gez v0, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    :goto_5
    if-ltz v0, :cond_9

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_9
    :goto_6
    monitor-exit v10

    return-wide v13

    :catchall_1
    move-exception v0

    move-object v15, v7

    :goto_7
    if-eqz v11, :cond_b

    if-eqz v12, :cond_a

    goto :goto_8

    :cond_a
    iget-object v5, v1, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v5}, Lcom/android/server/vibrator/VibrationThread;->access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->cancelSyncedVibration()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_a

    :cond_b
    :goto_8
    cmp-long v5, v13, v5

    if-gez v5, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_9
    if-ltz v5, :cond_c

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_c
    :goto_a
    nop

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private startVibrating(Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;)J"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->play()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->getVibratorOnDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p1, Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/vibrator/VibrationThread;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelImmediately()V
    .locals 0

    return-void
.end method

.method public getVibratorOnDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method public play()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "StartVibrateStep"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    const-wide/16 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->currentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    invoke-direct {p0, v5}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    nop

    iget-wide v7, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    cmp-long v9, v7, v3

    if-ltz v9, :cond_1

    cmp-long v3, v7, v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v3, v4, p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_2
    :try_start_1
    invoke-direct {p0, v6, v2}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->startVibrating(Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    iget-object v9, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v9, v7, v8}, Lcom/android/server/vibrator/VibrationThread;->access$200(Lcom/android/server/vibrator/VibrationThread;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-wide v5, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_4

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    new-instance v3, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v3, v4, p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-object v2

    :catchall_0
    move-exception v5

    iget-wide v6, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->mVibratorsOnMaxDuration:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_6

    cmp-long v3, v6, v3

    if-lez v3, :cond_5

    new-instance v3, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v3, v4, p0}, Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;->nextStep()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method
