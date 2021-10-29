.class final Lcom/android/server/vibrator/RampToStepAdapter;
.super Ljava/lang/Object;
.source "RampToStepAdapter.java"

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
.field private final mStepDuration:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    return-void
.end method

.method private apply(Landroid/os/vibrator/RampSegment;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/vibrator/RampSegment;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/vibrator/StepSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartFrequency()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v2, v3, v4, v5}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v1

    iget v3, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    int-to-long v4, v3

    add-long/2addr v1, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v1, v4

    long-to-int v1, v1

    div-int/2addr v1, v3

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    new-instance v4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v6

    invoke-static {v5, v6, v3}, Lcom/android/server/vibrator/RampToStepAdapter;->interpolate(FFF)F

    move-result v5

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartFrequency()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v7

    invoke-static {v6, v7, v3}, Lcom/android/server/vibrator/RampToStepAdapter;->interpolate(FFF)F

    move-result v6

    iget v7, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    invoke-direct {v4, v5, v6, v7}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    new-instance v3, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static interpolate(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .locals 5
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

    const-wide/16 v0, 0x400

    invoke-virtual {p3, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v3, v2, Landroid/os/vibrator/RampSegment;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/RampSegment;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/RampToStepAdapter;->apply(Landroid/os/vibrator/RampSegment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le p2, v1, :cond_2

    add-int/2addr p2, v4

    :cond_2
    add-int/2addr v1, v4

    add-int/2addr v0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .locals 0

    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/RampToStepAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
