.class public Lcom/google/android/systemui/columbus/sensors/PeakDetector;
.super Ljava/lang/Object;
.source "PeakDetector.java"


# instance fields
.field private mAmplitude:F

.field private mAmplitudeReference:F

.field private mGotNewHighValue:Z

.field private final mMaxTapDuration:J

.field private mMinNoiseTolerate:F

.field private mNoiseTolerate:F

.field private mNumberPeak:I

.field private mPeakId:I

.field private mTimestamp:J

.field private mWindowSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7270e00

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMaxTapDuration:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNumberPeak:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mTimestamp:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mWindowSize:I

    iput v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMinNoiseTolerate:F

    iput v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mGotNewHighValue:Z

    return-void
.end method


# virtual methods
.method public getAmplitude()F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    return p0
.end method

.method public getNumberPeaks()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNumberPeak:I

    return p0
.end method

.method public getPeakId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    return p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNumberPeak:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mTimestamp:J

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    return-void
.end method

.method public setMinNoiseTolerate(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMinNoiseTolerate:F

    return-void
.end method

.method public setWindowSize(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mWindowSize:I

    return-void
.end method

.method public update(FJ)V
    .locals 8

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->reset()V

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMinNoiseTolerate:F

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    :cond_1
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    sub-float/2addr v0, p1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mGotNewHighValue:Z

    iget-wide v2, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mTimestamp:J

    sub-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    const-wide/32 v2, 0x7270e00

    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_6

    :cond_2
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mWindowSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    iput-wide p2, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mTimestamp:J

    goto :goto_0

    :cond_4
    iget p2, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_6

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mGotNewHighValue:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNumberPeak:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNumberPeak:I

    :cond_5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mGotNewHighValue:Z

    :cond_6
    :goto_0
    return-void
.end method
