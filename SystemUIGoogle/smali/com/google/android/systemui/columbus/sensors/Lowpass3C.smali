.class public final Lcom/google/android/systemui/columbus/sensors/Lowpass3C;
.super Lcom/google/android/systemui/columbus/sensors/Lowpass1C;
.source "Lowpass3C.java"


# instance fields
.field public mLowpassX:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

.field public mLowpassY:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

.field public mLowpassZ:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;-><init>()V

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassX:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassY:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassZ:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    return-void
.end method


# virtual methods
.method public final setPara()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassX:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassY:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iput v1, v0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassZ:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iput v1, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    return-void
.end method

.method public final update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassX:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iget v2, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->update(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassY:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iget v3, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->update(F)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassZ:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iget p1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->update(F)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    return-object v0
.end method
