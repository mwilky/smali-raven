.class public Lcom/google/android/systemui/columbus/sensors/Slope1C;
.super Ljava/lang/Object;
.source "Slope1C.java"


# instance fields
.field private mDeltaX:F

.field private mRawLastX:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mDeltaX:F

    return-void
.end method


# virtual methods
.method public init(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    return-void
.end method

.method public update(FF)F
    .locals 0

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    sub-float p2, p1, p2

    iput p2, p0, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mDeltaX:F

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    return p2
.end method
