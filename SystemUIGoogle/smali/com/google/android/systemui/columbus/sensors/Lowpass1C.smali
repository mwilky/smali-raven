.class public Lcom/google/android/systemui/columbus/sensors/Lowpass1C;
.super Ljava/lang/Object;
.source "Lowpass1C.java"


# instance fields
.field public mLastX:F

.field public mPara:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    return-void
.end method


# virtual methods
.method public final update(F)F
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return p1

    :cond_0
    sub-float/2addr v1, v0

    iget v2, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    return v0
.end method
