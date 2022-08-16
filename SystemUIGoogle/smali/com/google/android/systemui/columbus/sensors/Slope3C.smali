.class public final Lcom/google/android/systemui/columbus/sensors/Slope3C;
.super Ljava/lang/Object;
.source "Slope3C.java"


# instance fields
.field public mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

.field public mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

.field public mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Slope1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Slope1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Slope1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Slope1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Slope1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Slope1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    return-void
.end method


# virtual methods
.method public final update(Lcom/google/android/systemui/columbus/sensors/Point3f;F)Lcom/google/android/systemui/columbus/sensors/Point3f;
    .locals 5

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v2, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    mul-float/2addr v2, p2

    iget v3, v1, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    sub-float v3, v2, v3

    iput v2, v1, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v2, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    mul-float/2addr v2, p2

    iget v4, v1, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    sub-float v4, v2, v4

    iput v2, v1, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget p1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    sub-float p2, p1, p2

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    invoke-direct {v0, v3, v4, p2}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    return-object v0
.end method
