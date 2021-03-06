.class final Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;
.super Ljava/lang/Object;
.source "ClippingAmplitudeAndFrequencyAdapter.java"

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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Landroid/os/vibrator/RampSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/RampSegment;
    .locals 11

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartFrequency()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v0

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v1

    new-instance v8, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v2

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v3

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v4

    invoke-virtual {p2, v0}, Landroid/os/VibratorInfo;->getAbsoluteFrequency(F)F

    move-result v5

    invoke-virtual {p2, v1}, Landroid/os/VibratorInfo;->getAbsoluteFrequency(F)F

    move-result v6

    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v9

    long-to-int v7, v9

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v8
.end method

.method private apply(Landroid/os/vibrator/StepSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/StepSegment;
    .locals 6

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v0

    new-instance v1, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v2

    invoke-virtual {p2, v0}, Landroid/os/VibratorInfo;->getAbsoluteFrequency(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v1
.end method

.method private clampAmplitude(Landroid/os/VibratorInfo;FF)F
    .locals 1

    invoke-virtual {p1, p2}, Landroid/os/VibratorInfo;->getMaxAmplitude(F)F

    move-result v0

    invoke-static {p3, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method private clampFrequency(Landroid/os/VibratorInfo;F)F
    .locals 2

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyRange()Landroid/util/Range;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .locals 4
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-direct {p0, v3, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Landroid/os/vibrator/StepSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/StepSegment;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/os/vibrator/RampSegment;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/RampSegment;

    invoke-direct {p0, v3, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Landroid/os/vibrator/RampSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .locals 0

    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p1

    return p1
.end method
