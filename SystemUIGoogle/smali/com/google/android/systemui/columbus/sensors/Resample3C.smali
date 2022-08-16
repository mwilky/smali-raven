.class public final Lcom/google/android/systemui/columbus/sensors/Resample3C;
.super Ljava/lang/Object;
.source "Resample3C.java"


# instance fields
.field public mInterval:J

.field public mRawLastT:J

.field public mRawLastX:F

.field public mRawLastY:F

.field public mRawLastZ:F

.field public mResampledLastT:J

.field public mResampledThisX:F

.field public mResampledThisY:F

.field public mResampledThisZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisX:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    return-void
.end method


# virtual methods
.method public final getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;
    .locals 7

    new-instance v6, Lcom/google/android/systemui/columbus/sensors/Sample3C;

    iget v1, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisX:F

    iget v2, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisY:F

    iget v3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisZ:F

    iget-wide v4, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledLastT:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/sensors/Sample3C;-><init>(FFFJ)V

    return-object v6
.end method

.method public final update(FFFJ)Z
    .locals 8

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastT:J

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    sub-long v4, p4, v0

    :cond_1
    iget-wide v6, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledLastT:J

    add-long/2addr v6, v4

    cmp-long v2, p4, v6

    if-gez v2, :cond_2

    iput-wide p4, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastT:J

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastX:F

    iput p2, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastY:F

    iput p3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastZ:F

    return v3

    :cond_2
    sub-long v2, v6, v0

    sub-long v4, p4, v0

    long-to-float v2, v2

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastX:F

    invoke-static {p1, v3, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    iput v3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisX:F

    iget v3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastY:F

    invoke-static {p2, v3, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    iput v3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisY:F

    iget v3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastZ:F

    invoke-static {p3, v3, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    iput v2, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisZ:F

    iput-wide v6, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledLastT:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_3

    iput-wide p4, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastT:J

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastX:F

    iput p2, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastY:F

    iput p3, p0, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastZ:F

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
