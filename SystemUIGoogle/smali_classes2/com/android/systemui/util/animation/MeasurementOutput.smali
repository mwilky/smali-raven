.class public final Lcom/android/systemui/util/animation/MeasurementOutput;
.super Ljava/lang/Object;
.source "MeasurementInput.kt"


# instance fields
.field private measuredHeight:I

.field private measuredWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    iput p2, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/animation/MeasurementOutput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/animation/MeasurementOutput;

    iget v1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    iget v3, p1, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    iget p1, p1, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMeasuredHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return p0
.end method

.method public final getMeasuredWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setMeasuredHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return-void
.end method

.method public final setMeasuredWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasurementOutput(measuredWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", measuredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
