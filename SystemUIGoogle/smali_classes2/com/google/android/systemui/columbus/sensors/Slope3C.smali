.class public Lcom/google/android/systemui/columbus/sensors/Slope3C;
.super Ljava/lang/Object;
.source "Slope3C.java"


# instance fields
.field private mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

.field private mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

.field private mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;


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
.method public init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Slope1C;->init(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Slope1C;->init(F)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget p1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/Slope1C;->init(F)V

    return-void
.end method

.method public update(Lcom/google/android/systemui/columbus/sensors/Point3f;F)Lcom/google/android/systemui/columbus/sensors/Point3f;
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v2, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-virtual {v1, v2, p2}, Lcom/google/android/systemui/columbus/sensors/Slope1C;->update(FF)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v3, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-virtual {v2, v3, p2}, Lcom/google/android/systemui/columbus/sensors/Slope1C;->update(FF)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget p1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/Slope1C;->update(FF)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    return-object v0
.end method
