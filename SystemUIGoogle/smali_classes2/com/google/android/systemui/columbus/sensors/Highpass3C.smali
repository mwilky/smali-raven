.class public Lcom/google/android/systemui/columbus/sensors/Highpass3C;
.super Ljava/lang/Object;
.source "Highpass3C.java"


# instance fields
.field private mHighpassX:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

.field private mHighpassY:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

.field private mHighpassZ:Lcom/google/android/systemui/columbus/sensors/Highpass1C;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iget v1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->init(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iget v1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->init(F)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iget p1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->init(F)V

    return-void
.end method

.method public setPara(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->setPara(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->setPara(F)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->setPara(F)V

    return-void
.end method

.method public update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iget v2, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->update(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iget v3, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->update(F)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iget p1, p1, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->update(F)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    return-object v0
.end method
