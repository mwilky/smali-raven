.class public final Lcom/google/android/systemui/columbus/sensors/PeakDetector;
.super Ljava/lang/Object;
.source "PeakDetector.java"


# instance fields
.field public mAmplitude:F

.field public mAmplitudeReference:F

.field public mGotNewHighValue:Z

.field public mMinNoiseTolerate:F

.field public mNoiseTolerate:F

.field public mPeakId:I

.field public mTimestamp:J

.field public mWindowSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mWindowSize:I

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMinNoiseTolerate:F

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mGotNewHighValue:Z

    return-void
.end method


# virtual methods
.method public final update(FJ)V
    .locals 8

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gez v0, :cond_0

    iput v5, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    iput v5, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    iput-wide v2, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mTimestamp:J

    iput v4, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMinNoiseTolerate:F

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v0, v6

    iget v6, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mNoiseTolerate:F

    :cond_1
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    sub-float/2addr v0, p1

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mGotNewHighValue:Z

    iget-wide v4, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mTimestamp:J

    sub-long v6, p2, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const-wide/32 v2, 0x7270e00

    cmp-long v0, v6, v2

    if-gez v0, :cond_5

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_5

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

    if-lez p2, :cond_5

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitudeReference:F

    iput-boolean v4, p0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mGotNewHighValue:Z

    :cond_5
    :goto_0
    return-void
.end method
