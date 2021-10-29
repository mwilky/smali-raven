.class public Lcom/google/android/systemui/assist/uihints/RollingAverage;
.super Ljava/lang/Object;
.source "RollingAverage.java"


# instance fields
.field private mIndex:I

.field private mSamples:[F

.field private mSize:I

.field private mTotal:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSize:I

    new-array v2, p1, [F

    iput-object v2, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSamples:[F

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSamples:[F

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSize:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSamples:[F

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    aget v4, v2, v3

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    aput p1, v2, v3

    add-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    if-ne v3, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mIndex:I

    :cond_1
    return-void
.end method

.method public getAverage()D
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mSize:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-double v0, v0

    return-wide v0
.end method
