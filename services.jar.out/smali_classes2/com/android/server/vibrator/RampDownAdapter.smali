.class final Lcom/android/server/vibrator/RampDownAdapter;
.super Ljava/lang/Object;
.source "RampDownAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter<",
        "Landroid/os/VibratorInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRampDownDuration:I

.field private final mStepDuration:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    iput p2, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    return-void
.end method

.method private addRampDownToLoop(Ljava/util/List;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    if-gez p2, :cond_0

    return p2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v3

    iget v5, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v6, v5

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    int-to-long v5, v5

    sub-long v5, v3, v5

    invoke-static {v2, v5, v6}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    instance-of v5, v1, Landroid/os/vibrator/StepSegment;

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v5

    move-object v6, v1

    check-cast v6, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v6

    iget v7, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v7, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    instance-of v5, v1, Landroid/os/vibrator/RampSegment;

    if-eqz v5, :cond_4

    move-object v5, v1

    check-cast v5, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v5

    move-object v6, v1

    check-cast v6, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v6

    iget v7, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v7, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    return p2

    :cond_5
    :goto_2
    return p2
.end method

.method private addRampDownToZeroAmplitudeSegments(Ljava/util/List;I)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_7

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v6}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-static {v5}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v6

    if-nez v6, :cond_0

    move/from16 v8, p2

    goto/16 :goto_2

    :cond_0
    const/4 v6, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v8}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v8

    instance-of v10, v5, Landroid/os/vibrator/StepSegment;

    if-eqz v10, :cond_1

    move-object v10, v5

    check-cast v10, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v10}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v10

    move-object v11, v5

    check-cast v11, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v11}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v11

    nop

    invoke-direct {v0, v10, v11, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object v6

    move-wide v15, v8

    move v8, v7

    goto :goto_1

    :cond_1
    instance-of v10, v5, Landroid/os/vibrator/RampSegment;

    if-eqz v10, :cond_3

    move-object v10, v5

    check-cast v10, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v10}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v10

    move-object v11, v5

    check-cast v11, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v11}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v11

    iget v12, v0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v13, v12

    cmp-long v13, v8, v13

    const/4 v14, 0x0

    if-gtz v13, :cond_2

    new-array v12, v7, [Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v10, v11, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-wide v15, v8

    move v8, v7

    goto :goto_1

    :cond_2
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/os/vibrator/VibrationEffectSegment;

    move-wide v15, v8

    int-to-long v7, v12

    invoke-static {v10, v11, v7, v8}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v7

    aput-object v7, v13, v14

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v8, v8

    sub-long v8, v15, v8

    invoke-static {v7, v11, v8, v9}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v13, v8

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-wide v15, v8

    move v8, v7

    :goto_1
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v1, v4, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move/from16 v8, p2

    if-le v8, v4, :cond_4

    add-int/2addr v2, v7

    :cond_4
    add-int/2addr v4, v7

    add-int/2addr v3, v7

    goto :goto_2

    :cond_5
    move/from16 v8, p2

    goto :goto_2

    :cond_6
    move/from16 v8, p2

    :goto_2
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto/16 :goto_0

    :cond_7
    move/from16 v8, p2

    return v2
.end method

.method private static createRampDown(FFJ)Landroid/os/vibrator/RampSegment;
    .locals 7

    new-instance v6, Landroid/os/vibrator/RampSegment;

    long-to-int v5, p2

    const/4 v2, 0x0

    move-object v0, v6

    move v1, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v6
.end method

.method private createStepsDown(FFJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFJ)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    div-float v1, p1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Landroid/os/vibrator/StepSegment;

    int-to-float v5, v3

    mul-float/2addr v5, v1

    sub-float v5, p1, v5

    iget v6, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    invoke-direct {v4, v5, p2, v6}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-int v3, p3

    iget v4, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    new-instance v4, Landroid/os/vibrator/StepSegment;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p2, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private static endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .locals 4

    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    :cond_3
    return v3
.end method

.method private static isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .locals 5

    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method private static updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 8

    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/RampSegment;

    new-instance v7, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v2

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v3

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getStartFrequency()F

    move-result v4

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v5

    long-to-int v6, p1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v7

    :cond_0
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    new-instance v1, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v3

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I",
            "Landroid/os/VibratorInfo;",
            ")I"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    if-gtz v0, :cond_0

    return p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/RampDownAdapter;->addRampDownToZeroAmplitudeSegments(Ljava/util/List;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/RampDownAdapter;->addRampDownToLoop(Ljava/util/List;I)I

    move-result p2

    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .locals 0

    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/RampDownAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
